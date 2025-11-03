import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Tracks whether we've already suggested compounding in this app session.
final compoundPromptShownProvider = StateProvider<bool>((ref) => false);
