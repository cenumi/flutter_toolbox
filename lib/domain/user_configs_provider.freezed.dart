// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_configs_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserConfigs {
  String get pubBaseURL => throw _privateConstructorUsedError;
  String? get flutterPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserConfigsCopyWith<UserConfigs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserConfigsCopyWith<$Res> {
  factory $UserConfigsCopyWith(
          UserConfigs value, $Res Function(UserConfigs) then) =
      _$UserConfigsCopyWithImpl<$Res>;
  $Res call({String pubBaseURL, String? flutterPath});
}

/// @nodoc
class _$UserConfigsCopyWithImpl<$Res> implements $UserConfigsCopyWith<$Res> {
  _$UserConfigsCopyWithImpl(this._value, this._then);

  final UserConfigs _value;
  // ignore: unused_field
  final $Res Function(UserConfigs) _then;

  @override
  $Res call({
    Object? pubBaseURL = freezed,
    Object? flutterPath = freezed,
  }) {
    return _then(_value.copyWith(
      pubBaseURL: pubBaseURL == freezed
          ? _value.pubBaseURL
          : pubBaseURL // ignore: cast_nullable_to_non_nullable
              as String,
      flutterPath: flutterPath == freezed
          ? _value.flutterPath
          : flutterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserConfigsCopyWith<$Res>
    implements $UserConfigsCopyWith<$Res> {
  factory _$$_UserConfigsCopyWith(
          _$_UserConfigs value, $Res Function(_$_UserConfigs) then) =
      __$$_UserConfigsCopyWithImpl<$Res>;
  @override
  $Res call({String pubBaseURL, String? flutterPath});
}

/// @nodoc
class __$$_UserConfigsCopyWithImpl<$Res> extends _$UserConfigsCopyWithImpl<$Res>
    implements _$$_UserConfigsCopyWith<$Res> {
  __$$_UserConfigsCopyWithImpl(
      _$_UserConfigs _value, $Res Function(_$_UserConfigs) _then)
      : super(_value, (v) => _then(v as _$_UserConfigs));

  @override
  _$_UserConfigs get _value => super._value as _$_UserConfigs;

  @override
  $Res call({
    Object? pubBaseURL = freezed,
    Object? flutterPath = freezed,
  }) {
    return _then(_$_UserConfigs(
      pubBaseURL: pubBaseURL == freezed
          ? _value.pubBaseURL
          : pubBaseURL // ignore: cast_nullable_to_non_nullable
              as String,
      flutterPath: flutterPath == freezed
          ? _value.flutterPath
          : flutterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserConfigs implements _UserConfigs {
  const _$_UserConfigs(
      {this.pubBaseURL = 'https://pub.dartlang.org', this.flutterPath});

  @override
  @JsonKey()
  final String pubBaseURL;
  @override
  final String? flutterPath;

  @override
  String toString() {
    return 'UserConfigs(pubBaseURL: $pubBaseURL, flutterPath: $flutterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserConfigs &&
            const DeepCollectionEquality()
                .equals(other.pubBaseURL, pubBaseURL) &&
            const DeepCollectionEquality()
                .equals(other.flutterPath, flutterPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pubBaseURL),
      const DeepCollectionEquality().hash(flutterPath));

  @JsonKey(ignore: true)
  @override
  _$$_UserConfigsCopyWith<_$_UserConfigs> get copyWith =>
      __$$_UserConfigsCopyWithImpl<_$_UserConfigs>(this, _$identity);
}

abstract class _UserConfigs implements UserConfigs {
  const factory _UserConfigs(
      {final String pubBaseURL, final String? flutterPath}) = _$_UserConfigs;

  @override
  String get pubBaseURL => throw _privateConstructorUsedError;
  @override
  String? get flutterPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserConfigsCopyWith<_$_UserConfigs> get copyWith =>
      throw _privateConstructorUsedError;
}
