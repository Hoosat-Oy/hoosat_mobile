// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_settings_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletSettingsImpl _$$WalletSettingsImplFromJson(Map json) =>
    _$WalletSettingsImpl(
      requestPassword: $enumDecodeNullable(
              _$RequestPasswordEnumMap, json['requestPassword']) ??
          RequestPassword.atLaunch,
      autoCompoundEnabled: json['autoCompoundEnabled'] as bool? ?? false,
    );

Map<String, dynamic> _$$WalletSettingsImplToJson(
        _$WalletSettingsImpl instance) =>
    <String, dynamic>{
      'requestPassword': _$RequestPasswordEnumMap[instance.requestPassword]!,
      'autoCompoundEnabled': instance.autoCompoundEnabled,
    };

const _$RequestPasswordEnumMap = {
  RequestPassword.atLaunch: 'atLaunch',
  RequestPassword.whenLocked: 'whenLocked',
  RequestPassword.whenSigning: 'whenSigning',
};
