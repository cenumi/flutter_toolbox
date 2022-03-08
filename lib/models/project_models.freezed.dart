// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProjectTearOff {
  const _$ProjectTearOff();

  _Project call({int? id, String? name, required String path}) {
    return _Project(
      id: id,
      name: name,
      path: path,
    );
  }
}

/// @nodoc
const $Project = _$ProjectTearOff();

/// @nodoc
mixin _$Project {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String path});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res> implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  final Project _value;
  // ignore: unused_field
  final $Res Function(Project) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$ProjectCopyWith(_Project value, $Res Function(_Project) then) =
      __$ProjectCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, String path});
}

/// @nodoc
class __$ProjectCopyWithImpl<$Res> extends _$ProjectCopyWithImpl<$Res>
    implements _$ProjectCopyWith<$Res> {
  __$ProjectCopyWithImpl(_Project _value, $Res Function(_Project) _then)
      : super(_value, (v) => _then(v as _Project));

  @override
  _Project get _value => super._value as _Project;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? path = freezed,
  }) {
    return _then(_Project(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Project extends _Project {
  const _$_Project({this.id, this.name, required this.path}) : super._();

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String path;

  @override
  String toString() {
    return 'Project(id: $id, name: $name, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Project &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$ProjectCopyWith<_Project> get copyWith =>
      __$ProjectCopyWithImpl<_Project>(this, _$identity);
}

abstract class _Project extends Project {
  const factory _Project({int? id, String? name, required String path}) =
      _$_Project;
  const _Project._() : super._();

  @override
  int? get id;
  @override
  String? get name;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$ProjectCopyWith<_Project> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DependencyVersionTearOff {
  const _$DependencyVersionTearOff();

  _DependencyVersion call(
      {int? id,
      @Index(unique: true) required String name,
      required String stableVersion,
      required String preReleaseVersion,
      required bool preReleasing,
      required DateTime updateTime}) {
    return _DependencyVersion(
      id: id,
      name: name,
      stableVersion: stableVersion,
      preReleaseVersion: preReleaseVersion,
      preReleasing: preReleasing,
      updateTime: updateTime,
    );
  }
}

/// @nodoc
const $DependencyVersion = _$DependencyVersionTearOff();

/// @nodoc
mixin _$DependencyVersion {
  int? get id => throw _privateConstructorUsedError;
  @Index(unique: true)
  String get name => throw _privateConstructorUsedError;
  String get stableVersion => throw _privateConstructorUsedError;
  String get preReleaseVersion => throw _privateConstructorUsedError;
  bool get preReleasing => throw _privateConstructorUsedError;
  DateTime get updateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DependencyVersionCopyWith<DependencyVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DependencyVersionCopyWith<$Res> {
  factory $DependencyVersionCopyWith(
          DependencyVersion value, $Res Function(DependencyVersion) then) =
      _$DependencyVersionCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @Index(unique: true) String name,
      String stableVersion,
      String preReleaseVersion,
      bool preReleasing,
      DateTime updateTime});
}

/// @nodoc
class _$DependencyVersionCopyWithImpl<$Res>
    implements $DependencyVersionCopyWith<$Res> {
  _$DependencyVersionCopyWithImpl(this._value, this._then);

  final DependencyVersion _value;
  // ignore: unused_field
  final $Res Function(DependencyVersion) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? stableVersion = freezed,
    Object? preReleaseVersion = freezed,
    Object? preReleasing = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stableVersion: stableVersion == freezed
          ? _value.stableVersion
          : stableVersion // ignore: cast_nullable_to_non_nullable
              as String,
      preReleaseVersion: preReleaseVersion == freezed
          ? _value.preReleaseVersion
          : preReleaseVersion // ignore: cast_nullable_to_non_nullable
              as String,
      preReleasing: preReleasing == freezed
          ? _value.preReleasing
          : preReleasing // ignore: cast_nullable_to_non_nullable
              as bool,
      updateTime: updateTime == freezed
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$DependencyVersionCopyWith<$Res>
    implements $DependencyVersionCopyWith<$Res> {
  factory _$DependencyVersionCopyWith(
          _DependencyVersion value, $Res Function(_DependencyVersion) then) =
      __$DependencyVersionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @Index(unique: true) String name,
      String stableVersion,
      String preReleaseVersion,
      bool preReleasing,
      DateTime updateTime});
}

/// @nodoc
class __$DependencyVersionCopyWithImpl<$Res>
    extends _$DependencyVersionCopyWithImpl<$Res>
    implements _$DependencyVersionCopyWith<$Res> {
  __$DependencyVersionCopyWithImpl(
      _DependencyVersion _value, $Res Function(_DependencyVersion) _then)
      : super(_value, (v) => _then(v as _DependencyVersion));

  @override
  _DependencyVersion get _value => super._value as _DependencyVersion;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? stableVersion = freezed,
    Object? preReleaseVersion = freezed,
    Object? preReleasing = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_DependencyVersion(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stableVersion: stableVersion == freezed
          ? _value.stableVersion
          : stableVersion // ignore: cast_nullable_to_non_nullable
              as String,
      preReleaseVersion: preReleaseVersion == freezed
          ? _value.preReleaseVersion
          : preReleaseVersion // ignore: cast_nullable_to_non_nullable
              as String,
      preReleasing: preReleasing == freezed
          ? _value.preReleasing
          : preReleasing // ignore: cast_nullable_to_non_nullable
              as bool,
      updateTime: updateTime == freezed
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DependencyVersion extends _DependencyVersion {
  const _$_DependencyVersion(
      {this.id,
      @Index(unique: true) required this.name,
      required this.stableVersion,
      required this.preReleaseVersion,
      required this.preReleasing,
      required this.updateTime})
      : super._();

  @override
  final int? id;
  @override
  @Index(unique: true)
  final String name;
  @override
  final String stableVersion;
  @override
  final String preReleaseVersion;
  @override
  final bool preReleasing;
  @override
  final DateTime updateTime;

  @override
  String toString() {
    return 'DependencyVersion(id: $id, name: $name, stableVersion: $stableVersion, preReleaseVersion: $preReleaseVersion, preReleasing: $preReleasing, updateTime: $updateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DependencyVersion &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.stableVersion, stableVersion) &&
            const DeepCollectionEquality()
                .equals(other.preReleaseVersion, preReleaseVersion) &&
            const DeepCollectionEquality()
                .equals(other.preReleasing, preReleasing) &&
            const DeepCollectionEquality()
                .equals(other.updateTime, updateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(stableVersion),
      const DeepCollectionEquality().hash(preReleaseVersion),
      const DeepCollectionEquality().hash(preReleasing),
      const DeepCollectionEquality().hash(updateTime));

  @JsonKey(ignore: true)
  @override
  _$DependencyVersionCopyWith<_DependencyVersion> get copyWith =>
      __$DependencyVersionCopyWithImpl<_DependencyVersion>(this, _$identity);
}

abstract class _DependencyVersion extends DependencyVersion {
  const factory _DependencyVersion(
      {int? id,
      @Index(unique: true) required String name,
      required String stableVersion,
      required String preReleaseVersion,
      required bool preReleasing,
      required DateTime updateTime}) = _$_DependencyVersion;
  const _DependencyVersion._() : super._();

  @override
  int? get id;
  @override
  @Index(unique: true)
  String get name;
  @override
  String get stableVersion;
  @override
  String get preReleaseVersion;
  @override
  bool get preReleasing;
  @override
  DateTime get updateTime;
  @override
  @JsonKey(ignore: true)
  _$DependencyVersionCopyWith<_DependencyVersion> get copyWith =>
      throw _privateConstructorUsedError;
}
