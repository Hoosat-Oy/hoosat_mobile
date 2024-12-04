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

const kHoosatExplorerMainnet = BlockExplorer(
  network: HoosatNetwork.mainnet,
  name: 'Hoosat Explorer',
  url: 'explorer.hoosat.fi',
  addressUrl: 'https://explorer.hoosat.fi/addresses/$kParamPattern',
  txUrl: 'https://explorer.hoosat.fi/txs/$kParamPattern',
);

const kHoosatExplorerTestnet = BlockExplorer(
  network: HoosatNetwork.testnet,
  name: 'Hoosat Explorer',
  url: 'explorer-testnet.hoosat.fi',
  addressUrl: 'https://explorer-testnet.hoosat.fi/addresses/$kParamPattern',
  txUrl: 'https://explorer-testet.hoosat.fi/txs/$kParamPattern',
);



const kBlockExplorersOptions = <String, List<BlockExplorer>>{
  kHoosatNetworkIdMainnet: [
    kHoosatExplorerMainnet,
  ],
  kHoosatNetworkIdTestnet: [
    kHoosatExplorerTestnet,
  ],
  kHoosatNetworkIdDevnet: [],
  kHoosatNetworkIdSimnet: [],
};
