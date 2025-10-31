import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../app_router.dart';
import '../hoosat/hoosat.dart';
import '../l10n/l10n.dart';
import '../util/numberutil.dart';
import '../util/ui_util.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/dialog.dart';

class CompoundUtxosDialog extends ConsumerWidget {
  final bool lightMode;
  final bool rbf;

  const CompoundUtxosDialog({
    super.key,
    this.lightMode = false,
    required this.rbf,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final log = ref.read(loggerProvider);
    final utxos = ref.watch(utxoListProvider);
    final balance = ref.watch(formatedTotalBalanceProvider);
    final maxSend = NumberUtil.formatedAmount(ref.watch(maxSendProvider));
    final kasSymbol = ref.watch(kasSymbolProvider);

    Future<void> sendCompoundTx() async {
      try {
        AppDialogs.showInProgressDialog(
          context,
          l10n.compoundingUtxos,
          l10n.compoundingMessage,
        );

        final walletService = ref.read(walletServiceProvider);
        final addressNotifier = ref.read(addressNotifierProvider);
        final changeAddress = await addressNotifier.nextChangeAddress;

        final List<Utxo> allSpendableUtxos = ref.read(spendableUtxosProvider);
        // Select the first chunk for the compound tx (or iterate spendableChunks if you want to process all)
        if (allSpendableUtxos.length <= 1) {
          UIUtil.showSnackbar(l10n.compoundTooFewUtxos, context);
          appRouter.pop(context);
          return;
        }
        const int chunkSize = 84;
        final List<List<Utxo>> spendableChunks = [];
        for (var i = 0; i < allSpendableUtxos.length; i += chunkSize) {
          final end = (i + chunkSize) > allSpendableUtxos.length
              ? allSpendableUtxos.length
              : i + chunkSize;
          spendableChunks.add(allSpendableUtxos.sublist(i, end));
        }

        log.d('Spendable Chunks: ${spendableChunks.length}');
        // Fire transactions at ~200ms intervals to speed up compounding while
        // avoiding a flood. Schedule all sends and wait for completion.
        final futures = <Future<void>>[];
        const gap = Duration(milliseconds: 200);
        for (var i = 0; i < spendableChunks.length; i++) {
          final delay = gap * i;
          futures.add(Future.delayed(delay, () async {
            log.d(
                'Compound Iteration $i starting (chunk=${spendableChunks[i].length})');

            Amount? priorityFee;
            if (rbf) {
              try {
                final pending = ref.read(txNotifierProvider).pendingTxs;
                if (pending.isNotEmpty) {
                  final p = pending.first;
                  priorityFee = Amount.raw(p.fees.priorityFee.raw + BigInt.one);
                }
              } catch (_) {
                // ignore
              }
            }

            final compoundTx = walletService.createCompoundTx(
              compoundAddress: changeAddress.address,
              spendableUtxos: spendableChunks[i],
              feePerInput: kFeePerInput,
              priorityFee: priorityFee,
            );
            final txId =
                await walletService.sendTransaction(compoundTx.tx, rbf: rbf);
            log.i('Compound Iteration $i submitted txId=$txId');
            ref.invalidate(pendingTxsProvider);
          }));
        }
        await Future.wait(futures);

        if (lightMode) {
          // give some time for compound tx to broadcast and get accepted
          await Future.delayed(const Duration(seconds: 5));
          // close both dialogs
          appRouter.pop(context);
        }

        UIUtil.showSnackbar(l10n.compoundSuccess, context);
      } catch (e) {
        UIUtil.showSnackbar(l10n.compoundFailure, context);
      } finally {
        appRouter.pop(context);
      }
    }

    Future<void> compound() async {
      final authUtil = ref.read(authUtilProvider);
      final message = l10n.compoundUtxosConfirmation;
      final auth = await authUtil.authenticate(context, message, message);
      if (auth) {
        await sendCompoundTx();
      }
    }

    return AppAlertDialog(
      title: Text(
        lightMode ? l10n.compoundRequired : l10n.compoundUtxosConfirmation,
        style: styles.textStyleDialogHeader,
      ),
      content: lightMode
          ? Text(
              l10n.compoundRequiredDescription,
              style: styles.textStyleSettingItemHeader,
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.utxosUppercase,
                        style: styles.textStyleSettingItemHeader,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          l10n.balance,
                          style: styles.textStyleSettingItemHeader,
                        ),
                      ),
                      Text(
                        l10n.maxSend,
                        style: styles.textStyleSettingItemHeader,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          '${utxos.length}',
                          style: styles.textStyleSettingItemHeader,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          '$balance $kasSymbol',
                          style: styles.textStyleSettingItemHeader,
                        ),
                      ),
                      Container(
                        child: Text(
                          '$maxSend $kasSymbol',
                          style: styles.textStyleSettingItemHeader,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
      actions: [
        TextButton(
          style: styles.dialogButtonStyle,
          onPressed: () => appRouter.pop(context),
          child: Text(
            l10n.closeUppercased,
            style: styles.textStyleDialogOptions,
          ),
        ),
        TextButton(
          style: styles.dialogButtonStyle,
          child: Text(
            l10n.compoundUppercased,
            style: styles.textStyleDialogOptions,
          ),
          onPressed: compound,
        ),
      ],
    );
  }
}
