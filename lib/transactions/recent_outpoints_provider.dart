import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../hoosat/hoosat.dart';

// Key format: "<txId>:<index>"
String _keyFor(Outpoint o) => '${o.transactionId}:${o.index}';
String _keyForRaw(String txId, int index) => '$txId:$index';

// Holds a short-lived cache of recently spent outpoints mapped to
// (address, amount). This helps populate input metadata for mempool
// transactions before parent transactions are fetched/indexed.
class RecentOutpoints extends StateNotifier<Map<String, (String, int)>> {
  RecentOutpoints() : super(<String, (String, int)>{});

  void add(Outpoint outpoint, String address, int amount) {
    state = {
      ...state,
      _keyFor(outpoint): (address, amount),
    };
  }

  void addRaw(String txId, int index, String address, int amount) {
    state = {
      ...state,
      _keyForRaw(txId, index): (address, amount),
    };
  }

  (String, int)? getEntry(String txId, int index) =>
      state[_keyForRaw(txId, index)];

  void clear() => state = {};
}

final recentOutpointsProvider =
    StateNotifierProvider<RecentOutpoints, Map<String, (String, int)>>(
  (ref) => RecentOutpoints(),
);
