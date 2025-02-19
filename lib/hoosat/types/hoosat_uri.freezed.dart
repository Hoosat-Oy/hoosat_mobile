// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hoosat_uri.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HoosatUriParam {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HoosatUriParamCopyWith<HoosatUriParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoosatUriParamCopyWith<$Res> {
  factory $HoosatUriParamCopyWith(
          HoosatUriParam value, $Res Function(HoosatUriParam) then) =
      _$HoosatUriParamCopyWithImpl<$Res, HoosatUriParam>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$HoosatUriParamCopyWithImpl<$Res, $Val extends HoosatUriParam>
    implements $HoosatUriParamCopyWith<$Res> {
  _$HoosatUriParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HoosatUriParamImplCopyWith<$Res>
    implements $HoosatUriParamCopyWith<$Res> {
  factory _$$HoosatUriParamImplCopyWith(_$HoosatUriParamImpl value,
          $Res Function(_$HoosatUriParamImpl) then) =
      __$$HoosatUriParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$HoosatUriParamImplCopyWithImpl<$Res>
    extends _$HoosatUriParamCopyWithImpl<$Res, _$HoosatUriParamImpl>
    implements _$$HoosatUriParamImplCopyWith<$Res> {
  __$$HoosatUriParamImplCopyWithImpl(
      _$HoosatUriParamImpl _value, $Res Function(_$HoosatUriParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$HoosatUriParamImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HoosatUriParamImpl extends _HoosatUriParam {
  const _$HoosatUriParamImpl({required this.key, required this.value})
      : super._();

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'HoosatUriParam(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HoosatUriParamImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HoosatUriParamImplCopyWith<_$HoosatUriParamImpl> get copyWith =>
      __$$HoosatUriParamImplCopyWithImpl<_$HoosatUriParamImpl>(
          this, _$identity);
}

abstract class _HoosatUriParam extends HoosatUriParam {
  const factory _HoosatUriParam(
      {required final String key,
      required final String value}) = _$HoosatUriParamImpl;
  const _HoosatUriParam._() : super._();

  @override
  String get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$HoosatUriParamImplCopyWith<_$HoosatUriParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HoosatUri {
  Address get address => throw _privateConstructorUsedError;
  Amount? get amount => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  IList<HoosatUriParam> get others => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HoosatUriCopyWith<HoosatUri> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoosatUriCopyWith<$Res> {
  factory $HoosatUriCopyWith(HoosatUri value, $Res Function(HoosatUri) then) =
      _$HoosatUriCopyWithImpl<$Res, HoosatUri>;
  @useResult
  $Res call(
      {Address address,
      Amount? amount,
      String? label,
      String? message,
      IList<HoosatUriParam> others});

  $AddressCopyWith<$Res> get address;
  $AmountCopyWith<$Res>? get amount;
}

/// @nodoc
class _$HoosatUriCopyWithImpl<$Res, $Val extends HoosatUri>
    implements $HoosatUriCopyWith<$Res> {
  _$HoosatUriCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? amount = freezed,
    Object? label = freezed,
    Object? message = freezed,
    Object? others = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as IList<HoosatUriParam>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountCopyWith<$Res>? get amount {
    if (_value.amount == null) {
      return null;
    }

    return $AmountCopyWith<$Res>(_value.amount!, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HoosatUriImplCopyWith<$Res>
    implements $HoosatUriCopyWith<$Res> {
  factory _$$HoosatUriImplCopyWith(
          _$HoosatUriImpl value, $Res Function(_$HoosatUriImpl) then) =
      __$$HoosatUriImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address address,
      Amount? amount,
      String? label,
      String? message,
      IList<HoosatUriParam> others});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $AmountCopyWith<$Res>? get amount;
}

/// @nodoc
class __$$HoosatUriImplCopyWithImpl<$Res>
    extends _$HoosatUriCopyWithImpl<$Res, _$HoosatUriImpl>
    implements _$$HoosatUriImplCopyWith<$Res> {
  __$$HoosatUriImplCopyWithImpl(
      _$HoosatUriImpl _value, $Res Function(_$HoosatUriImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? amount = freezed,
    Object? label = freezed,
    Object? message = freezed,
    Object? others = null,
  }) {
    return _then(_$HoosatUriImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      others: null == others
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as IList<HoosatUriParam>,
    ));
  }
}

/// @nodoc

class _$HoosatUriImpl extends _HoosatUri {
  const _$HoosatUriImpl(
      {required this.address,
      this.amount,
      this.label,
      this.message,
      this.others = const IListConst([])})
      : super._();

  @override
  final Address address;
  @override
  final Amount? amount;
  @override
  final String? label;
  @override
  final String? message;
  @override
  @JsonKey()
  final IList<HoosatUriParam> others;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HoosatUriImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.others, others));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, amount, label, message,
      const DeepCollectionEquality().hash(others));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HoosatUriImplCopyWith<_$HoosatUriImpl> get copyWith =>
      __$$HoosatUriImplCopyWithImpl<_$HoosatUriImpl>(this, _$identity);
}

abstract class _HoosatUri extends HoosatUri {
  const factory _HoosatUri(
      {required final Address address,
      final Amount? amount,
      final String? label,
      final String? message,
      final IList<HoosatUriParam> others}) = _$HoosatUriImpl;
  const _HoosatUri._() : super._();

  @override
  Address get address;
  @override
  Amount? get amount;
  @override
  String? get label;
  @override
  String? get message;
  @override
  IList<HoosatUriParam> get others;
  @override
  @JsonKey(ignore: true)
  _$$HoosatUriImplCopyWith<_$HoosatUriImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
