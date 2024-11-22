import 'package:freezed_annotation/freezed_annotation.dart';

import '../kaspa/kaspa.dart';

part 'block_explorers.freezed.dart';
part 'block_explorers.g.dart';

const kParamPattern = '{0}';

@freezed
class BlockExplorer with _$BlockExplorer {
  const BlockExplorer._();
  const factory BlockExplorer({
    required HoosatNetwork network,
    required String name,
    required String url,
    required String addressUrl,
    required String txUrl,
  }) = _BlockExplorer;

  String urlForAddress(String address) =>
      addressUrl.replaceFirst(kParamPattern, address);

  String urlForTx(String hash) => txUrl.replaceFirst(kParamPattern, hash);

  factory BlockExplorer.fromJson(Map<String, dynamic> json) =>
      _$BlockExplorerFromJson(json);
}

const kKaspaExplorerMainnet = BlockExplorer(
  network: HoosatNetwork.mainnet,
  name: 'Kaspa Explorer',
  url: 'explorer.kaspa.org',
  addressUrl: 'https://explorer.kaspa.org/addresses/$kParamPattern',
  txUrl: 'https://explorer.kaspa.org/txs/$kParamPattern',
);

const kKaspaExplorerTestnet10 = BlockExplorer(
  network: HoosatNetwork.testnet,
  name: 'Kaspa Explorer',
  url: 'explorer-tn10.kaspa.org',
  addressUrl: 'https://explorer-tn10.kaspa.org/addresses/$kParamPattern',
  txUrl: 'https://explorer-tn10.kaspa.org/txs/$kParamPattern',
);

const kKaspaExplorerTestnet11 = BlockExplorer(
  network: HoosatNetwork.testnet,
  name: 'Kaspa Explorer',
  url: 'explorer-tn11.kaspa.org',
  addressUrl: 'https://explorer-tn11.kaspa.org/addresses/$kParamPattern',
  txUrl: 'https://explorer-tn11.kaspa.org/txs/$kParamPattern',
);

const kKasFyiMainnet = BlockExplorer(
  network: HoosatNetwork.mainnet,
  name: 'Kas.fyi',
  url: 'kas.fyi',
  addressUrl: 'https://kas.fyi/address/$kParamPattern',
  txUrl: 'https://kas.fyi/transaction/$kParamPattern',
);

const kKasFyiTestnet = BlockExplorer(
  network: HoosatNetwork.testnet,
  name: 'Kas.fyi Testnet',
  url: 'testnet.kas.fyi',
  addressUrl: 'https://testnet.kas.fyi/address/$kParamPattern',
  txUrl: 'https://testnet.kas.fyi/transaction/$kParamPattern',
);

const kKatnipMainnet = BlockExplorer(
  network: HoosatNetwork.mainnet,
  name: 'Katnip',
  url: 'katnip.kaspad.net',
  addressUrl: 'https://katnip.kaspad.net/addr/$kParamPattern',
  txUrl: 'https://katnip.kaspad.net/tx/$kParamPattern',
);

const kKatnipTestnet = BlockExplorer(
  network: HoosatNetwork.testnet,
  name: 'Katnip Testnet',
  url: 'katnip-testnet.kaspad.net',
  addressUrl: 'https://katnip-testnet.kaspad.net/addr/$kParamPattern',
  txUrl: 'https://katnip-testnet.kaspad.net/tx/$kParamPattern',
);

const kBlockExplorersOptions = <String, List<BlockExplorer>>{
  kHoosatNetworkIdMainnet: [
    kKaspaExplorerMainnet,
    kKasFyiMainnet,
  ],
  kHoosatNetworkIdTestnet10: [
    kKaspaExplorerTestnet10,
  ],
  kHoosatNetworkIdDevnet: [],
  kHoosatNetworkIdSimnet: [],
};
