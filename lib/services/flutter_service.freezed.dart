// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'flutter_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FlutterServiceDataTearOff {
  const _$FlutterServiceDataTearOff();

  _FlutterServiceData call(
      {FlutterVersionInfo? flutterVersionInfo,
      FlutterSettingsInfo? flutterSettingsInfo}) {
    return _FlutterServiceData(
      flutterVersionInfo: flutterVersionInfo,
      flutterSettingsInfo: flutterSettingsInfo,
    );
  }
}

/// @nodoc
const $FlutterServiceData = _$FlutterServiceDataTearOff();

/// @nodoc
mixin _$FlutterServiceData {
  FlutterVersionInfo? get flutterVersionInfo =>
      throw _privateConstructorUsedError;
  FlutterSettingsInfo? get flutterSettingsInfo =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlutterServiceDataCopyWith<FlutterServiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlutterServiceDataCopyWith<$Res> {
  factory $FlutterServiceDataCopyWith(
          FlutterServiceData value, $Res Function(FlutterServiceData) then) =
      _$FlutterServiceDataCopyWithImpl<$Res>;
  $Res call(
      {FlutterVersionInfo? flutterVersionInfo,
      FlutterSettingsInfo? flutterSettingsInfo});

  $FlutterVersionInfoCopyWith<$Res>? get flutterVersionInfo;
  $FlutterSettingsInfoCopyWith<$Res>? get flutterSettingsInfo;
}

/// @nodoc
class _$FlutterServiceDataCopyWithImpl<$Res>
    implements $FlutterServiceDataCopyWith<$Res> {
  _$FlutterServiceDataCopyWithImpl(this._value, this._then);

  final FlutterServiceData _value;
  // ignore: unused_field
  final $Res Function(FlutterServiceData) _then;

  @override
  $Res call({
    Object? flutterVersionInfo = freezed,
    Object? flutterSettingsInfo = freezed,
  }) {
    return _then(_value.copyWith(
      flutterVersionInfo: flutterVersionInfo == freezed
          ? _value.flutterVersionInfo
          : flutterVersionInfo // ignore: cast_nullable_to_non_nullable
              as FlutterVersionInfo?,
      flutterSettingsInfo: flutterSettingsInfo == freezed
          ? _value.flutterSettingsInfo
          : flutterSettingsInfo // ignore: cast_nullable_to_non_nullable
              as FlutterSettingsInfo?,
    ));
  }

  @override
  $FlutterVersionInfoCopyWith<$Res>? get flutterVersionInfo {
    if (_value.flutterVersionInfo == null) {
      return null;
    }

    return $FlutterVersionInfoCopyWith<$Res>(_value.flutterVersionInfo!,
        (value) {
      return _then(_value.copyWith(flutterVersionInfo: value));
    });
  }

  @override
  $FlutterSettingsInfoCopyWith<$Res>? get flutterSettingsInfo {
    if (_value.flutterSettingsInfo == null) {
      return null;
    }

    return $FlutterSettingsInfoCopyWith<$Res>(_value.flutterSettingsInfo!,
        (value) {
      return _then(_value.copyWith(flutterSettingsInfo: value));
    });
  }
}

/// @nodoc
abstract class _$FlutterServiceDataCopyWith<$Res>
    implements $FlutterServiceDataCopyWith<$Res> {
  factory _$FlutterServiceDataCopyWith(
          _FlutterServiceData value, $Res Function(_FlutterServiceData) then) =
      __$FlutterServiceDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {FlutterVersionInfo? flutterVersionInfo,
      FlutterSettingsInfo? flutterSettingsInfo});

  @override
  $FlutterVersionInfoCopyWith<$Res>? get flutterVersionInfo;
  @override
  $FlutterSettingsInfoCopyWith<$Res>? get flutterSettingsInfo;
}

/// @nodoc
class __$FlutterServiceDataCopyWithImpl<$Res>
    extends _$FlutterServiceDataCopyWithImpl<$Res>
    implements _$FlutterServiceDataCopyWith<$Res> {
  __$FlutterServiceDataCopyWithImpl(
      _FlutterServiceData _value, $Res Function(_FlutterServiceData) _then)
      : super(_value, (v) => _then(v as _FlutterServiceData));

  @override
  _FlutterServiceData get _value => super._value as _FlutterServiceData;

  @override
  $Res call({
    Object? flutterVersionInfo = freezed,
    Object? flutterSettingsInfo = freezed,
  }) {
    return _then(_FlutterServiceData(
      flutterVersionInfo: flutterVersionInfo == freezed
          ? _value.flutterVersionInfo
          : flutterVersionInfo // ignore: cast_nullable_to_non_nullable
              as FlutterVersionInfo?,
      flutterSettingsInfo: flutterSettingsInfo == freezed
          ? _value.flutterSettingsInfo
          : flutterSettingsInfo // ignore: cast_nullable_to_non_nullable
              as FlutterSettingsInfo?,
    ));
  }
}

/// @nodoc

class _$_FlutterServiceData extends _FlutterServiceData {
  const _$_FlutterServiceData(
      {this.flutterVersionInfo, this.flutterSettingsInfo})
      : super._();

  @override
  final FlutterVersionInfo? flutterVersionInfo;
  @override
  final FlutterSettingsInfo? flutterSettingsInfo;

  @override
  String toString() {
    return 'FlutterServiceData(flutterVersionInfo: $flutterVersionInfo, flutterSettingsInfo: $flutterSettingsInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FlutterServiceData &&
            const DeepCollectionEquality()
                .equals(other.flutterVersionInfo, flutterVersionInfo) &&
            const DeepCollectionEquality()
                .equals(other.flutterSettingsInfo, flutterSettingsInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flutterVersionInfo),
      const DeepCollectionEquality().hash(flutterSettingsInfo));

  @JsonKey(ignore: true)
  @override
  _$FlutterServiceDataCopyWith<_FlutterServiceData> get copyWith =>
      __$FlutterServiceDataCopyWithImpl<_FlutterServiceData>(this, _$identity);
}

abstract class _FlutterServiceData extends FlutterServiceData {
  const factory _FlutterServiceData(
      {FlutterVersionInfo? flutterVersionInfo,
      FlutterSettingsInfo? flutterSettingsInfo}) = _$_FlutterServiceData;
  const _FlutterServiceData._() : super._();

  @override
  FlutterVersionInfo? get flutterVersionInfo;
  @override
  FlutterSettingsInfo? get flutterSettingsInfo;
  @override
  @JsonKey(ignore: true)
  _$FlutterServiceDataCopyWith<_FlutterServiceData> get copyWith =>
      throw _privateConstructorUsedError;
}
