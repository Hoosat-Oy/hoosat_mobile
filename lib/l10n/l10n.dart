import 'package:flutter/material.dart';
import 'package:hoosat_mobile/l10n/app_localizations.dart';

AppLocalizations l10nOf(BuildContext context) => AppLocalizations.of(context)!;

class L10nWrapper {
  AppLocalizations? l10n;
  L10nWrapper();
}

final l10nWrapper = L10nWrapper();
