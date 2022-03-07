// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'flutter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FlutterSettingsInfoTearOff {
  const _$FlutterSettingsInfoTearOff();

  _FlutterSettingsInfo call(
      {required bool analyticsEnabled,
      required Map<SupportedPlatform, bool> platforms}) {
    return _FlutterSettingsInfo(
      analyticsEnabled: analyticsEnabled,
      platforms: platforms,
    );
  }
}

/// @nodoc
const $FlutterSettingsInfo = _$FlutterSettingsInfoTearOff();

/// @nodoc
mixin _$FlutterSettingsInfo {
  bool get analyticsEnabled => throw _privateConstructorUsedError;
  Map<SupportedPlatform, bool> get platforms =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlutterSettingsInfoCopyWith<FlutterSettingsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlutterSettingsInfoCopyWith<$Res> {
  factory $FlutterSettingsInfoCopyWith(
          FlutterSettingsInfo value, $Res Function(FlutterSettingsInfo) then) =
      _$FlutterSettingsInfoCopyWithImpl<$Res>;
  $Res call({bool analyticsEnabled, Map<SupportedPlatform, bool> platforms});
}

/// @nodoc
class _$FlutterSettingsInfoCopyWithImpl<$Res>
    implements $FlutterSettingsInfoCopyWith<$Res> {
  _$FlutterSettingsInfoCopyWithImpl(this._value, this._then);

  final FlutterSettingsInfo _value;
  // ignore: unused_field
  final $Res Function(FlutterSettingsInfo) _then;

  @override
  $Res call({
    Object? analyticsEnabled = freezed,
    Object? platforms = freezed,
  }) {
    return _then(_value.copyWith(
      analyticsEnabled: analyticsEnabled == freezed
          ? _value.analyticsEnabled
          : analyticsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      platforms: platforms == freezed
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as Map<SupportedPlatform, bool>,
    ));
  }
}

/// @nodoc
abstract class _$FlutterSettingsInfoCopyWith<$Res>
    implements $FlutterSettingsInfoCopyWith<$Res> {
  factory _$FlutterSettingsInfoCopyWith(_FlutterSettingsInfo value,
          $Res Function(_FlutterSettingsInfo) then) =
      __$FlutterSettingsInfoCopyWithImpl<$Res>;
  @override
  $Res call({bool analyticsEnabled, Map<SupportedPlatform, bool> platforms});
}

/// @nodoc
class __$FlutterSettingsInfoCopyWithImpl<$Res>
    extends _$FlutterSettingsInfoCopyWithImpl<$Res>
    implements _$FlutterSettingsInfoCopyWith<$Res> {
  __$FlutterSettingsInfoCopyWithImpl(
      _FlutterSettingsInfo _value, $Res Function(_FlutterSettingsInfo) _then)
      : super(_value, (v) => _then(v as _FlutterSettingsInfo));

  @override
  _FlutterSettingsInfo get _value => super._value as _FlutterSettingsInfo;

  @override
  $Res call({
    Object? analyticsEnabled = freezed,
    Object? platforms = freezed,
  }) {
    return _then(_FlutterSettingsInfo(
      analyticsEnabled: analyticsEnabled == freezed
          ? _value.analyticsEnabled
          : analyticsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      platforms: platforms == freezed
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as Map<SupportedPlatform, bool>,
    ));
  }
}

/// @nodoc

class _$_FlutterSettingsInfo extends _FlutterSettingsInfo
    with DiagnosticableTreeMixin {
  const _$_FlutterSettingsInfo(
      {required this.analyticsEnabled, required this.platforms})
      : super._();

  @override
  final bool analyticsEnabled;
  @override
  final Map<SupportedPlatform, bool> platforms;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FlutterSettingsInfo(analyticsEnabled: $analyticsEnabled, platforms: $platforms)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FlutterSettingsInfo'))
      ..add(DiagnosticsProperty('analyticsEnabled', analyticsEnabled))
      ..add(DiagnosticsProperty('platforms', platforms));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FlutterSettingsInfo &&
            const DeepCollectionEquality()
                .equals(other.analyticsEnabled, analyticsEnabled) &&
            const DeepCollectionEquality().equals(other.platforms, platforms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(analyticsEnabled),
      const DeepCollectionEquality().hash(platforms));

  @JsonKey(ignore: true)
  @override
  _$FlutterSettingsInfoCopyWith<_FlutterSettingsInfo> get copyWith =>
      __$FlutterSettingsInfoCopyWithImpl<_FlutterSettingsInfo>(
          this, _$identity);
}

abstract class _FlutterSettingsInfo extends FlutterSettingsInfo {
  const factory _FlutterSettingsInfo(
          {required bool analyticsEnabled,
          required Map<SupportedPlatform, bool> platforms}) =
      _$_FlutterSettingsInfo;
  const _FlutterSettingsInfo._() : super._();

  @override
  bool get analyticsEnabled;
  @override
  Map<SupportedPlatform, bool> get platforms;
  @override
  @JsonKey(ignore: true)
  _$FlutterSettingsInfoCopyWith<_FlutterSettingsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FlutterVersionInfoTearOff {
  const _$FlutterVersionInfoTearOff();

  _FlutterVersionInfo call(
      {required String flutterVersion,
      required String branch,
      required String repo,
      required String framework,
      required String frameworkTime,
      required String engine,
      required String dartVersion,
      required String devToolsVersion}) {
    return _FlutterVersionInfo(
      flutterVersion: flutterVersion,
      branch: branch,
      repo: repo,
      framework: framework,
      frameworkTime: frameworkTime,
      engine: engine,
      dartVersion: dartVersion,
      devToolsVersion: devToolsVersion,
    );
  }
}

/// @nodoc
const $FlutterVersionInfo = _$FlutterVersionInfoTearOff();

/// @nodoc
mixin _$FlutterVersionInfo {
  String get flutterVersion => throw _privateConstructorUsedError;
  String get branch => throw _privateConstructorUsedError;
  String get repo => throw _privateConstructorUsedError;
  String get framework => throw _privateConstructorUsedError;
  String get frameworkTime => throw _privateConstructorUsedError;
  String get engine => throw _privateConstructorUsedError;
  String get dartVersion => throw _privateConstructorUsedError;
  String get devToolsVersion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlutterVersionInfoCopyWith<FlutterVersionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlutterVersionInfoCopyWith<$Res> {
  factory $FlutterVersionInfoCopyWith(
          FlutterVersionInfo value, $Res Function(FlutterVersionInfo) then) =
      _$FlutterVersionInfoCopyWithImpl<$Res>;
  $Res call(
      {String flutterVersion,
      String branch,
      String repo,
      String framework,
      String frameworkTime,
      String engine,
      String dartVersion,
      String devToolsVersion});
}

/// @nodoc
class _$FlutterVersionInfoCopyWithImpl<$Res>
    implements $FlutterVersionInfoCopyWith<$Res> {
  _$FlutterVersionInfoCopyWithImpl(this._value, this._then);

  final FlutterVersionInfo _value;
  // ignore: unused_field
  final $Res Function(FlutterVersionInfo) _then;

  @override
  $Res call({
    Object? flutterVersion = freezed,
    Object? branch = freezed,
    Object? repo = freezed,
    Object? framework = freezed,
    Object? frameworkTime = freezed,
    Object? engine = freezed,
    Object? dartVersion = freezed,
    Object? devToolsVersion = freezed,
  }) {
    return _then(_value.copyWith(
      flutterVersion: flutterVersion == freezed
          ? _value.flutterVersion
          : flutterVersion // ignore: cast_nullable_to_non_nullable
              as String,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
      repo: repo == freezed
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as String,
      framework: framework == freezed
          ? _value.framework
          : framework // ignore: cast_nullable_to_non_nullable
              as String,
      frameworkTime: frameworkTime == freezed
          ? _value.frameworkTime
          : frameworkTime // ignore: cast_nullable_to_non_nullable
              as String,
      engine: engine == freezed
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as String,
      dartVersion: dartVersion == freezed
          ? _value.dartVersion
          : dartVersion // ignore: cast_nullable_to_non_nullable
              as String,
      devToolsVersion: devToolsVersion == freezed
          ? _value.devToolsVersion
          : devToolsVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FlutterVersionInfoCopyWith<$Res>
    implements $FlutterVersionInfoCopyWith<$Res> {
  factory _$FlutterVersionInfoCopyWith(
          _FlutterVersionInfo value, $Res Function(_FlutterVersionInfo) then) =
      __$FlutterVersionInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String flutterVersion,
      String branch,
      String repo,
      String framework,
      String frameworkTime,
      String engine,
      String dartVersion,
      String devToolsVersion});
}

/// @nodoc
class __$FlutterVersionInfoCopyWithImpl<$Res>
    extends _$FlutterVersionInfoCopyWithImpl<$Res>
    implements _$FlutterVersionInfoCopyWith<$Res> {
  __$FlutterVersionInfoCopyWithImpl(
      _FlutterVersionInfo _value, $Res Function(_FlutterVersionInfo) _then)
      : super(_value, (v) => _then(v as _FlutterVersionInfo));

  @override
  _FlutterVersionInfo get _value => super._value as _FlutterVersionInfo;

  @override
  $Res call({
    Object? flutterVersion = freezed,
    Object? branch = freezed,
    Object? repo = freezed,
    Object? framework = freezed,
    Object? frameworkTime = freezed,
    Object? engine = freezed,
    Object? dartVersion = freezed,
    Object? devToolsVersion = freezed,
  }) {
    return _then(_FlutterVersionInfo(
      flutterVersion: flutterVersion == freezed
          ? _value.flutterVersion
          : flutterVersion // ignore: cast_nullable_to_non_nullable
              as String,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
      repo: repo == freezed
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as String,
      framework: framework == freezed
          ? _value.framework
          : framework // ignore: cast_nullable_to_non_nullable
              as String,
      frameworkTime: frameworkTime == freezed
          ? _value.frameworkTime
          : frameworkTime // ignore: cast_nullable_to_non_nullable
              as String,
      engine: engine == freezed
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as String,
      dartVersion: dartVersion == freezed
          ? _value.dartVersion
          : dartVersion // ignore: cast_nullable_to_non_nullable
              as String,
      devToolsVersion: devToolsVersion == freezed
          ? _value.devToolsVersion
          : devToolsVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FlutterVersionInfo extends _FlutterVersionInfo
    with DiagnosticableTreeMixin {
  const _$_FlutterVersionInfo(
      {required this.flutterVersion,
      required this.branch,
      required this.repo,
      required this.framework,
      required this.frameworkTime,
      required this.engine,
      required this.dartVersion,
      required this.devToolsVersion})
      : super._();

  @override
  final String flutterVersion;
  @override
  final String branch;
  @override
  final String repo;
  @override
  final String framework;
  @override
  final String frameworkTime;
  @override
  final String engine;
  @override
  final String dartVersion;
  @override
  final String devToolsVersion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FlutterVersionInfo(flutterVersion: $flutterVersion, branch: $branch, repo: $repo, framework: $framework, frameworkTime: $frameworkTime, engine: $engine, dartVersion: $dartVersion, devToolsVersion: $devToolsVersion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FlutterVersionInfo'))
      ..add(DiagnosticsProperty('flutterVersion', flutterVersion))
      ..add(DiagnosticsProperty('branch', branch))
      ..add(DiagnosticsProperty('repo', repo))
      ..add(DiagnosticsProperty('framework', framework))
      ..add(DiagnosticsProperty('frameworkTime', frameworkTime))
      ..add(DiagnosticsProperty('engine', engine))
      ..add(DiagnosticsProperty('dartVersion', dartVersion))
      ..add(DiagnosticsProperty('devToolsVersion', devToolsVersion));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FlutterVersionInfo &&
            const DeepCollectionEquality()
                .equals(other.flutterVersion, flutterVersion) &&
            const DeepCollectionEquality().equals(other.branch, branch) &&
            const DeepCollectionEquality().equals(other.repo, repo) &&
            const DeepCollectionEquality().equals(other.framework, framework) &&
            const DeepCollectionEquality()
                .equals(other.frameworkTime, frameworkTime) &&
            const DeepCollectionEquality().equals(other.engine, engine) &&
            const DeepCollectionEquality()
                .equals(other.dartVersion, dartVersion) &&
            const DeepCollectionEquality()
                .equals(other.devToolsVersion, devToolsVersion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flutterVersion),
      const DeepCollectionEquality().hash(branch),
      const DeepCollectionEquality().hash(repo),
      const DeepCollectionEquality().hash(framework),
      const DeepCollectionEquality().hash(frameworkTime),
      const DeepCollectionEquality().hash(engine),
      const DeepCollectionEquality().hash(dartVersion),
      const DeepCollectionEquality().hash(devToolsVersion));

  @JsonKey(ignore: true)
  @override
  _$FlutterVersionInfoCopyWith<_FlutterVersionInfo> get copyWith =>
      __$FlutterVersionInfoCopyWithImpl<_FlutterVersionInfo>(this, _$identity);
}

abstract class _FlutterVersionInfo extends FlutterVersionInfo {
  const factory _FlutterVersionInfo(
      {required String flutterVersion,
      required String branch,
      required String repo,
      required String framework,
      required String frameworkTime,
      required String engine,
      required String dartVersion,
      required String devToolsVersion}) = _$_FlutterVersionInfo;
  const _FlutterVersionInfo._() : super._();

  @override
  String get flutterVersion;
  @override
  String get branch;
  @override
  String get repo;
  @override
  String get framework;
  @override
  String get frameworkTime;
  @override
  String get engine;
  @override
  String get dartVersion;
  @override
  String get devToolsVersion;
  @override
  @JsonKey(ignore: true)
  _$FlutterVersionInfoCopyWith<_FlutterVersionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
