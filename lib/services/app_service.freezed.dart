// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppServiceDataTearOff {
  const _$AppServiceDataTearOff();

  _AppServiceData call({required String pubBaseUrl, String? flutterPath}) {
    return _AppServiceData(
      pubBaseUrl: pubBaseUrl,
      flutterPath: flutterPath,
    );
  }
}

/// @nodoc
const $AppServiceData = _$AppServiceDataTearOff();

/// @nodoc
mixin _$AppServiceData {
  String get pubBaseUrl => throw _privateConstructorUsedError;
  String? get flutterPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppServiceDataCopyWith<AppServiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppServiceDataCopyWith<$Res> {
  factory $AppServiceDataCopyWith(
          AppServiceData value, $Res Function(AppServiceData) then) =
      _$AppServiceDataCopyWithImpl<$Res>;
  $Res call({String pubBaseUrl, String? flutterPath});
}

/// @nodoc
class _$AppServiceDataCopyWithImpl<$Res>
    implements $AppServiceDataCopyWith<$Res> {
  _$AppServiceDataCopyWithImpl(this._value, this._then);

  final AppServiceData _value;
  // ignore: unused_field
  final $Res Function(AppServiceData) _then;

  @override
  $Res call({
    Object? pubBaseUrl = freezed,
    Object? flutterPath = freezed,
  }) {
    return _then(_value.copyWith(
      pubBaseUrl: pubBaseUrl == freezed
          ? _value.pubBaseUrl
          : pubBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      flutterPath: flutterPath == freezed
          ? _value.flutterPath
          : flutterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AppServiceDataCopyWith<$Res>
    implements $AppServiceDataCopyWith<$Res> {
  factory _$AppServiceDataCopyWith(
          _AppServiceData value, $Res Function(_AppServiceData) then) =
      __$AppServiceDataCopyWithImpl<$Res>;
  @override
  $Res call({String pubBaseUrl, String? flutterPath});
}

/// @nodoc
class __$AppServiceDataCopyWithImpl<$Res>
    extends _$AppServiceDataCopyWithImpl<$Res>
    implements _$AppServiceDataCopyWith<$Res> {
  __$AppServiceDataCopyWithImpl(
      _AppServiceData _value, $Res Function(_AppServiceData) _then)
      : super(_value, (v) => _then(v as _AppServiceData));

  @override
  _AppServiceData get _value => super._value as _AppServiceData;

  @override
  $Res call({
    Object? pubBaseUrl = freezed,
    Object? flutterPath = freezed,
  }) {
    return _then(_AppServiceData(
      pubBaseUrl: pubBaseUrl == freezed
          ? _value.pubBaseUrl
          : pubBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      flutterPath: flutterPath == freezed
          ? _value.flutterPath
          : flutterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AppServiceData extends _AppServiceData {
  const _$_AppServiceData({required this.pubBaseUrl, this.flutterPath})
      : super._();

  @override
  final String pubBaseUrl;
  @override
  final String? flutterPath;

  @override
  String toString() {
    return 'AppServiceData(pubBaseUrl: $pubBaseUrl, flutterPath: $flutterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppServiceData &&
            const DeepCollectionEquality()
                .equals(other.pubBaseUrl, pubBaseUrl) &&
            const DeepCollectionEquality()
                .equals(other.flutterPath, flutterPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pubBaseUrl),
      const DeepCollectionEquality().hash(flutterPath));

  @JsonKey(ignore: true)
  @override
  _$AppServiceDataCopyWith<_AppServiceData> get copyWith =>
      __$AppServiceDataCopyWithImpl<_AppServiceData>(this, _$identity);
}

abstract class _AppServiceData extends AppServiceData {
  const factory _AppServiceData(
      {required String pubBaseUrl, String? flutterPath}) = _$_AppServiceData;
  const _AppServiceData._() : super._();

  @override
  String get pubBaseUrl;
  @override
  String? get flutterPath;
  @override
  @JsonKey(ignore: true)
  _$AppServiceDataCopyWith<_AppServiceData> get copyWith =>
      throw _privateConstructorUsedError;
}
