import 'package:freezed_annotation/freezed_annotation.dart';

import '../hoosat/hoosat.dart';
import 'block_explorers.dart';

part 'block_explorer_settings.freezed.dart';
part 'block_explorer_settings.g.dart';

@freezed
class BlockExplorerSettings with _$BlockExplorerSettings {
  const BlockExplorerSettings._();

  const factory BlockExplorerSettings({
    @Default(const {
      kHoosatNetworkIdMainnet: kHoosatExplorerMainnet,
      kHoosatNetworkIdTestnet: kHoosatExplorerTestnet,
    })
    Map<String, BlockExplorer> selection,
  }) = _BlockExplorerSettings;

  BlockExplorer explorerForNetwork(String networkId) {
    return selection[networkId] ?? kHoosatExplorerMainnet;
  }

  factory BlockExplorerSettings.fromJson(Map<String, dynamic> json) =>
      _$BlockExplorerSettingsFromJson(json);
}
