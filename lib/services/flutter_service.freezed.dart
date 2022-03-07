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
class _$FlutterServiceValuesTearOff {
  const _$FlutterServiceValuesTearOff();

  _FlutterServiceValues call(
      {String? flutterPath,
      FlutterVersionInfo? flutterVersionInfo,
      FlutterSettingsInfo? flutterSettingsInfo}) {
    return _FlutterServiceValues(
      flutterPath: flutterPath,
      flutterVersionInfo: flutterVersionInfo,
      flutterSettingsInfo: flutterSettingsInfo,
    );
  }
}

/// @nodoc
const $FlutterServiceValues = _$FlutterServiceValuesTearOff();

/// @nodoc
mixin _$FlutterServiceValues {
  String? get flutterPath => throw _privateConstructorUsedError;
  FlutterVersionInfo? get flutterVersionInfo =>
      throw _privateConstructorUsedError;
  FlutterSettingsInfo? get flutterSettingsInfo =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlutterServiceValuesCopyWith<FlutterServiceValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlutterServiceValuesCopyWith<$Res> {
  factory $FlutterServiceValuesCopyWith(FlutterServiceValues value,
          $Res Function(FlutterServiceValues) then) =
      _$FlutterServiceValuesCopyWithImpl<$Res>;
  $Res call(
      {String? flutterPath,
      FlutterVersionInfo? flutterVersionInfo,
      FlutterSettingsInfo? flutterSettingsInfo});

  $FlutterVersionInfoCopyWith<$Res>? get flutterVersionInfo;
  $FlutterSettingsInfoCopyWith<$Res>? get flutterSettingsInfo;
}

/// @nodoc
class _$FlutterServiceValuesCopyWithImpl<$Res>
    implements $FlutterServiceValuesCopyWith<$Res> {
  _$FlutterServiceValuesCopyWithImpl(this._value, this._then);

  final FlutterServiceValues _value;
  // ignore: unused_field
  final $Res Function(FlutterServiceValues) _then;

  @override
  $Res call({
    Object? flutterPath = freezed,
    Object? flutterVersionInfo = freezed,
    Object? flutterSettingsInfo = freezed,
  }) {
    return _then(_value.copyWith(
      flutterPath: flutterPath == freezed
          ? _value.flutterPath
          : flutterPath // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$FlutterServiceValuesCopyWith<$Res>
    implements $FlutterServiceValuesCopyWith<$Res> {
  factory _$FlutterServiceValuesCopyWith(_FlutterServiceValues value,
          $Res Function(_FlutterServiceValues) then) =
      __$FlutterServiceValuesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? flutterPath,
      FlutterVersionInfo? flutterVersionInfo,
      FlutterSettingsInfo? flutterSettingsInfo});

  @override
  $FlutterVersionInfoCopyWith<$Res>? get flutterVersionInfo;
  @override
  $FlutterSettingsInfoCopyWith<$Res>? get flutterSettingsInfo;
}

/// @nodoc
class __$FlutterServiceValuesCopyWithImpl<$Res>
    extends _$FlutterServiceValuesCopyWithImpl<$Res>
    implements _$FlutterServiceValuesCopyWith<$Res> {
  __$FlutterServiceValuesCopyWithImpl(
      _FlutterServiceValues _value, $Res Function(_FlutterServiceValues) _then)
      : super(_value, (v) => _then(v as _FlutterServiceValues));

  @override
  _FlutterServiceValues get _value => super._value as _FlutterServiceValues;

  @override
  $Res call({
    Object? flutterPath = freezed,
    Object? flutterVersionInfo = freezed,
    Object? flutterSettingsInfo = freezed,
  }) {
    return _then(_FlutterServiceValues(
      flutterPath: flutterPath == freezed
          ? _value.flutterPath
          : flutterPath // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$_FlutterServiceValues extends _FlutterServiceValues
    with DiagnosticableTreeMixin {
  const _$_FlutterServiceValues(
      {this.flutterPath, this.flutterVersionInfo, this.flutterSettingsInfo})
      : super._();

  @override
  final String? flutterPath;
  @override
  final FlutterVersionInfo? flutterVersionInfo;
  @override
  final FlutterSettingsInfo? flutterSettingsInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FlutterServiceValues(flutterPath: $flutterPath, flutterVersionInfo: $flutterVersionInfo, flutterSettingsInfo: $flutterSettingsInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FlutterServiceValues'))
      ..add(DiagnosticsProperty('flutterPath', flutterPath))
      ..add(DiagnosticsProperty('flutterVersionInfo', flutterVersionInfo))
      ..add(DiagnosticsProperty('flutterSettingsInfo', flutterSettingsInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FlutterServiceValues &&
            const DeepCollectionEquality()
                .equals(other.flutterPath, flutterPath) &&
            const DeepCollectionEquality()
                .equals(other.flutterVersionInfo, flutterVersionInfo) &&
            const DeepCollectionEquality()
                .equals(other.flutterSettingsInfo, flutterSettingsInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flutterPath),
      const DeepCollectionEquality().hash(flutterVersionInfo),
      const DeepCollectionEquality().hash(flutterSettingsInfo));

  @JsonKey(ignore: true)
  @override
  _$FlutterServiceValuesCopyWith<_FlutterServiceValues> get copyWith =>
      __$FlutterServiceValuesCopyWithImpl<_FlutterServiceValues>(
          this, _$identity);
}

abstract class _FlutterServiceValues extends FlutterServiceValues {
  const factory _FlutterServiceValues(
      {String? flutterPath,
      FlutterVersionInfo? flutterVersionInfo,
      FlutterSettingsInfo? flutterSettingsInfo}) = _$_FlutterServiceValues;
  const _FlutterServiceValues._() : super._();

  @override
  String? get flutterPath;
  @override
  FlutterVersionInfo? get flutterVersionInfo;
  @override
  FlutterSettingsInfo? get flutterSettingsInfo;
  @override
  @JsonKey(ignore: true)
  _$FlutterServiceValuesCopyWith<_FlutterServiceValues> get copyWith =>
      throw _privateConstructorUsedError;
}
