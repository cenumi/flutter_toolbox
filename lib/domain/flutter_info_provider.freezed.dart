// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'flutter_info_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FlutterInfo {
  AsyncValue<FlutterVersionInfo> get versionInfo =>
      throw _privateConstructorUsedError;
  AsyncValue<FlutterSettingsInfo> get settingsInfo =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlutterInfoCopyWith<FlutterInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlutterInfoCopyWith<$Res> {
  factory $FlutterInfoCopyWith(
          FlutterInfo value, $Res Function(FlutterInfo) then) =
      _$FlutterInfoCopyWithImpl<$Res>;
  $Res call(
      {AsyncValue<FlutterVersionInfo> versionInfo,
      AsyncValue<FlutterSettingsInfo> settingsInfo});
}

/// @nodoc
class _$FlutterInfoCopyWithImpl<$Res> implements $FlutterInfoCopyWith<$Res> {
  _$FlutterInfoCopyWithImpl(this._value, this._then);

  final FlutterInfo _value;
  // ignore: unused_field
  final $Res Function(FlutterInfo) _then;

  @override
  $Res call({
    Object? versionInfo = freezed,
    Object? settingsInfo = freezed,
  }) {
    return _then(_value.copyWith(
      versionInfo: versionInfo == freezed
          ? _value.versionInfo
          : versionInfo // ignore: cast_nullable_to_non_nullable
              as AsyncValue<FlutterVersionInfo>,
      settingsInfo: settingsInfo == freezed
          ? _value.settingsInfo
          : settingsInfo // ignore: cast_nullable_to_non_nullable
              as AsyncValue<FlutterSettingsInfo>,
    ));
  }
}

/// @nodoc
abstract class _$$_FlutterInfoCopyWith<$Res>
    implements $FlutterInfoCopyWith<$Res> {
  factory _$$_FlutterInfoCopyWith(
          _$_FlutterInfo value, $Res Function(_$_FlutterInfo) then) =
      __$$_FlutterInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {AsyncValue<FlutterVersionInfo> versionInfo,
      AsyncValue<FlutterSettingsInfo> settingsInfo});
}

/// @nodoc
class __$$_FlutterInfoCopyWithImpl<$Res> extends _$FlutterInfoCopyWithImpl<$Res>
    implements _$$_FlutterInfoCopyWith<$Res> {
  __$$_FlutterInfoCopyWithImpl(
      _$_FlutterInfo _value, $Res Function(_$_FlutterInfo) _then)
      : super(_value, (v) => _then(v as _$_FlutterInfo));

  @override
  _$_FlutterInfo get _value => super._value as _$_FlutterInfo;

  @override
  $Res call({
    Object? versionInfo = freezed,
    Object? settingsInfo = freezed,
  }) {
    return _then(_$_FlutterInfo(
      versionInfo: versionInfo == freezed
          ? _value.versionInfo
          : versionInfo // ignore: cast_nullable_to_non_nullable
              as AsyncValue<FlutterVersionInfo>,
      settingsInfo: settingsInfo == freezed
          ? _value.settingsInfo
          : settingsInfo // ignore: cast_nullable_to_non_nullable
              as AsyncValue<FlutterSettingsInfo>,
    ));
  }
}

/// @nodoc

class _$_FlutterInfo implements _FlutterInfo {
  const _$_FlutterInfo(
      {this.versionInfo = const AsyncLoading(),
      this.settingsInfo = const AsyncLoading()});

  @override
  @JsonKey()
  final AsyncValue<FlutterVersionInfo> versionInfo;
  @override
  @JsonKey()
  final AsyncValue<FlutterSettingsInfo> settingsInfo;

  @override
  String toString() {
    return 'FlutterInfo(versionInfo: $versionInfo, settingsInfo: $settingsInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterInfo &&
            const DeepCollectionEquality()
                .equals(other.versionInfo, versionInfo) &&
            const DeepCollectionEquality()
                .equals(other.settingsInfo, settingsInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(versionInfo),
      const DeepCollectionEquality().hash(settingsInfo));

  @JsonKey(ignore: true)
  @override
  _$$_FlutterInfoCopyWith<_$_FlutterInfo> get copyWith =>
      __$$_FlutterInfoCopyWithImpl<_$_FlutterInfo>(this, _$identity);
}

abstract class _FlutterInfo implements FlutterInfo {
  const factory _FlutterInfo(
      {final AsyncValue<FlutterVersionInfo> versionInfo,
      final AsyncValue<FlutterSettingsInfo> settingsInfo}) = _$_FlutterInfo;

  @override
  AsyncValue<FlutterVersionInfo> get versionInfo =>
      throw _privateConstructorUsedError;
  @override
  AsyncValue<FlutterSettingsInfo> get settingsInfo =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FlutterInfoCopyWith<_$_FlutterInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
