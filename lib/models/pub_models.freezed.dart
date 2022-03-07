// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pub_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PubVersions _$PubVersionsFromJson(Map<String, dynamic> json) {
  return _PubVersions.fromJson(json);
}

/// @nodoc
class _$PubVersionsTearOff {
  const _$PubVersionsTearOff();

  _PubVersions call({required String name, required List<String> versions}) {
    return _PubVersions(
      name: name,
      versions: versions,
    );
  }

  PubVersions fromJson(Map<String, Object?> json) {
    return PubVersions.fromJson(json);
  }
}

/// @nodoc
const $PubVersions = _$PubVersionsTearOff();

/// @nodoc
mixin _$PubVersions {
  String get name => throw _privateConstructorUsedError;
  List<String> get versions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PubVersionsCopyWith<PubVersions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubVersionsCopyWith<$Res> {
  factory $PubVersionsCopyWith(
          PubVersions value, $Res Function(PubVersions) then) =
      _$PubVersionsCopyWithImpl<$Res>;
  $Res call({String name, List<String> versions});
}

/// @nodoc
class _$PubVersionsCopyWithImpl<$Res> implements $PubVersionsCopyWith<$Res> {
  _$PubVersionsCopyWithImpl(this._value, this._then);

  final PubVersions _value;
  // ignore: unused_field
  final $Res Function(PubVersions) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? versions = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      versions: versions == freezed
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$PubVersionsCopyWith<$Res>
    implements $PubVersionsCopyWith<$Res> {
  factory _$PubVersionsCopyWith(
          _PubVersions value, $Res Function(_PubVersions) then) =
      __$PubVersionsCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<String> versions});
}

/// @nodoc
class __$PubVersionsCopyWithImpl<$Res> extends _$PubVersionsCopyWithImpl<$Res>
    implements _$PubVersionsCopyWith<$Res> {
  __$PubVersionsCopyWithImpl(
      _PubVersions _value, $Res Function(_PubVersions) _then)
      : super(_value, (v) => _then(v as _PubVersions));

  @override
  _PubVersions get _value => super._value as _PubVersions;

  @override
  $Res call({
    Object? name = freezed,
    Object? versions = freezed,
  }) {
    return _then(_PubVersions(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      versions: versions == freezed
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PubVersions extends _PubVersions {
  const _$_PubVersions({required this.name, required this.versions})
      : super._();

  factory _$_PubVersions.fromJson(Map<String, dynamic> json) =>
      _$$_PubVersionsFromJson(json);

  @override
  final String name;
  @override
  final List<String> versions;

  @override
  String toString() {
    return 'PubVersions(name: $name, versions: $versions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PubVersions &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.versions, versions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(versions));

  @JsonKey(ignore: true)
  @override
  _$PubVersionsCopyWith<_PubVersions> get copyWith =>
      __$PubVersionsCopyWithImpl<_PubVersions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PubVersionsToJson(this);
  }
}

abstract class _PubVersions extends PubVersions {
  const factory _PubVersions(
      {required String name, required List<String> versions}) = _$_PubVersions;
  const _PubVersions._() : super._();

  factory _PubVersions.fromJson(Map<String, dynamic> json) =
      _$_PubVersions.fromJson;

  @override
  String get name;
  @override
  List<String> get versions;
  @override
  @JsonKey(ignore: true)
  _$PubVersionsCopyWith<_PubVersions> get copyWith =>
      throw _privateConstructorUsedError;
}
