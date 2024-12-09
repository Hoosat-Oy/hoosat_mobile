import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'node_settings_notifier.dart';
import 'node_types.dart';

final hoosatNodeSettingsProvider =
    StateNotifierProvider<NodeSettingsNotifier, NodeConfigSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  final notifier = NodeSettingsNotifier(repository);
  return notifier;
});

final hoosatNodeOptionsProvider = Provider((ref) {
  final settings = ref.watch(hoosatNodeSettingsProvider);
  return settings.options;
});

final hoosatNodeConfigProvider = Provider((ref) {
  final settings = ref.watch(hoosatNodeSettingsProvider);
  return ActiveNodeConfig(config: settings.selected);
});
