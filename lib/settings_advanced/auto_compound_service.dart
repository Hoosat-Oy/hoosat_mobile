import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_providers.dart';
import '../hoosat/hoosat.dart';
import '../transactions/recent_outpoints_provider.dart';
import '../l10n/l10n.dart';
import '../util/ui_util.dart';

/// Runs the compounding flow programmatically without any dialogs.
///
/// Guards:
/// - Skips if wallet is locked, view-only, or requires password auth.
/// - Skips if there are pending transactions.
/// - Skips if fewer than 2 spendable UTXOs.
///
/// Returns true if at least one compound transaction was broadcast.
Future<bool> runAutoCompound(WidgetRef ref, {BuildContext? context}) async {
  final wallet = ref.read(walletProvider);
  final walletAuth = ref.read(walletAuthProvider.notifier);

  if (wallet.isViewOnly) return false;
  if (walletAuth.walletIsLocked || walletAuth.needsPasswordAuth) return false;

  // Avoid interfering with a pending tx flow
  final pendingTxs = ref.read(txNotifierProvider).pendingTxs;
  if (pendingTxs.isNotEmpty) return false;

  final allSpendableUtxos = ref.read(spendableUtxosProvider);
  if (allSpendableUtxos.length <= 84) {
    if (context != null) {
      UIUtil.showSnackbar(l10nOf(context).compoundTooFewUtxos, context);
    }
    return false;
  }

  const int chunkSize = 84;
  final List<List<Utxo>> spendableChunks = [];
  for (var i = 0; i < allSpendableUtxos.length; i += chunkSize) {
    final end = (i + chunkSize) > allSpendableUtxos.length
        ? allSpendableUtxos.length
        : i + chunkSize;
    spendableChunks.add(allSpendableUtxos.sublist(i, end));
  }

  // Pre-seed recent outpoints cache with the inputs we are about to spend
  final recent = ref.read(recentOutpointsProvider.notifier);
  for (final u in allSpendableUtxos) {
    recent.add(
      u.outpoint,
      u.address,
      u.utxoEntry.amount.toInt(),
    );
  }

  final walletService = ref.read(walletServiceProvider);
  final addressNotifier = ref.read(addressNotifierProvider);
  final changeAddress = await addressNotifier.nextChangeAddress;

  bool anySent = false;
  for (var i = 0; i < spendableChunks.length; i++) {
    final compoundTx = walletService.createCompoundTx(
      compoundAddress: changeAddress.address,
      spendableUtxos: spendableChunks[i],
      feePerInput: kFeePerInput,
      priorityFee: null,
    );
    await walletService.sendTransaction(compoundTx.tx, rbf: false);
    anySent = true;
  }

  ref.invalidate(pendingTxsProvider);

  if (context != null && anySent) {
    // Allow broadcast to propagate a bit
    await Future.delayed(const Duration(seconds: 1));
    UIUtil.showSnackbar(l10nOf(context).compoundingUtxos, context);
  }

  return anySent;
}
