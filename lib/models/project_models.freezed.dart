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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Project {
  int? get id => throw _privateConstructorUsedError;
  @Index(unique: true)
  String get path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @Index(unique: true) String path,
      String name,
      String description});
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
    Object? path = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$_ProjectCopyWith(
          _$_Project value, $Res Function(_$_Project) then) =
      __$$_ProjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @Index(unique: true) String path,
      String name,
      String description});
}

/// @nodoc
class __$$_ProjectCopyWithImpl<$Res> extends _$ProjectCopyWithImpl<$Res>
    implements _$$_ProjectCopyWith<$Res> {
  __$$_ProjectCopyWithImpl(_$_Project _value, $Res Function(_$_Project) _then)
      : super(_value, (v) => _then(v as _$_Project));

  @override
  _$_Project get _value => super._value as _$_Project;

  @override
  $Res call({
    Object? id = freezed,
    Object? path = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Project(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Project extends _Project {
  const _$_Project(
      {this.id,
      @Index(unique: true) required this.path,
      required this.name,
      required this.description})
      : super._();

  @override
  final int? id;
  @override
  @Index(unique: true)
  final String path;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'Project(id: $id, path: $path, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Project &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      __$$_ProjectCopyWithImpl<_$_Project>(this, _$identity);
}

abstract class _Project extends Project {
  const factory _Project(
      {final int? id,
      @Index(unique: true) required final String path,
      required final String name,
      required final String description}) = _$_Project;
  const _Project._() : super._();

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @Index(unique: true)
  String get path => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$_DependencyVersionCopyWith<$Res>
    implements $DependencyVersionCopyWith<$Res> {
  factory _$$_DependencyVersionCopyWith(_$_DependencyVersion value,
          $Res Function(_$_DependencyVersion) then) =
      __$$_DependencyVersionCopyWithImpl<$Res>;
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
class __$$_DependencyVersionCopyWithImpl<$Res>
    extends _$DependencyVersionCopyWithImpl<$Res>
    implements _$$_DependencyVersionCopyWith<$Res> {
  __$$_DependencyVersionCopyWithImpl(
      _$_DependencyVersion _value, $Res Function(_$_DependencyVersion) _then)
      : super(_value, (v) => _then(v as _$_DependencyVersion));

  @override
  _$_DependencyVersion get _value => super._value as _$_DependencyVersion;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? stableVersion = freezed,
    Object? preReleaseVersion = freezed,
    Object? preReleasing = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_$_DependencyVersion(
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
            other is _$_DependencyVersion &&
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
  _$$_DependencyVersionCopyWith<_$_DependencyVersion> get copyWith =>
      __$$_DependencyVersionCopyWithImpl<_$_DependencyVersion>(
          this, _$identity);
}

abstract class _DependencyVersion extends DependencyVersion {
  const factory _DependencyVersion(
      {final int? id,
      @Index(unique: true) required final String name,
      required final String stableVersion,
      required final String preReleaseVersion,
      required final bool preReleasing,
      required final DateTime updateTime}) = _$_DependencyVersion;
  const _DependencyVersion._() : super._();

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @Index(unique: true)
  String get name => throw _privateConstructorUsedError;
  @override
  String get stableVersion => throw _privateConstructorUsedError;
  @override
  String get preReleaseVersion => throw _privateConstructorUsedError;
  @override
  bool get preReleasing => throw _privateConstructorUsedError;
  @override
  DateTime get updateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DependencyVersionCopyWith<_$_DependencyVersion> get copyWith =>
      throw _privateConstructorUsedError;
}
