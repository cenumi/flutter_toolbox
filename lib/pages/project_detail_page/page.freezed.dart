// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProjectDetailStateTearOff {
  const _$ProjectDetailStateTearOff();

  _ProjectDetailState call({Pubspec? pubspec, DateTime? lastUpdateTime}) {
    return _ProjectDetailState(
      pubspec: pubspec,
      lastUpdateTime: lastUpdateTime,
    );
  }
}

/// @nodoc
const $ProjectDetailState = _$ProjectDetailStateTearOff();

/// @nodoc
mixin _$ProjectDetailState {
  Pubspec? get pubspec => throw _privateConstructorUsedError;
  DateTime? get lastUpdateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectDetailStateCopyWith<ProjectDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDetailStateCopyWith<$Res> {
  factory $ProjectDetailStateCopyWith(
          ProjectDetailState value, $Res Function(ProjectDetailState) then) =
      _$ProjectDetailStateCopyWithImpl<$Res>;
  $Res call({Pubspec? pubspec, DateTime? lastUpdateTime});
}

/// @nodoc
class _$ProjectDetailStateCopyWithImpl<$Res>
    implements $ProjectDetailStateCopyWith<$Res> {
  _$ProjectDetailStateCopyWithImpl(this._value, this._then);

  final ProjectDetailState _value;
  // ignore: unused_field
  final $Res Function(ProjectDetailState) _then;

  @override
  $Res call({
    Object? pubspec = freezed,
    Object? lastUpdateTime = freezed,
  }) {
    return _then(_value.copyWith(
      pubspec: pubspec == freezed
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as Pubspec?,
      lastUpdateTime: lastUpdateTime == freezed
          ? _value.lastUpdateTime
          : lastUpdateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ProjectDetailStateCopyWith<$Res>
    implements $ProjectDetailStateCopyWith<$Res> {
  factory _$ProjectDetailStateCopyWith(
          _ProjectDetailState value, $Res Function(_ProjectDetailState) then) =
      __$ProjectDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({Pubspec? pubspec, DateTime? lastUpdateTime});
}

/// @nodoc
class __$ProjectDetailStateCopyWithImpl<$Res>
    extends _$ProjectDetailStateCopyWithImpl<$Res>
    implements _$ProjectDetailStateCopyWith<$Res> {
  __$ProjectDetailStateCopyWithImpl(
      _ProjectDetailState _value, $Res Function(_ProjectDetailState) _then)
      : super(_value, (v) => _then(v as _ProjectDetailState));

  @override
  _ProjectDetailState get _value => super._value as _ProjectDetailState;

  @override
  $Res call({
    Object? pubspec = freezed,
    Object? lastUpdateTime = freezed,
  }) {
    return _then(_ProjectDetailState(
      pubspec: pubspec == freezed
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as Pubspec?,
      lastUpdateTime: lastUpdateTime == freezed
          ? _value.lastUpdateTime
          : lastUpdateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_ProjectDetailState implements _ProjectDetailState {
  const _$_ProjectDetailState({this.pubspec, this.lastUpdateTime});

  @override
  final Pubspec? pubspec;
  @override
  final DateTime? lastUpdateTime;

  @override
  String toString() {
    return 'ProjectDetailState(pubspec: $pubspec, lastUpdateTime: $lastUpdateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProjectDetailState &&
            const DeepCollectionEquality().equals(other.pubspec, pubspec) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdateTime, lastUpdateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pubspec),
      const DeepCollectionEquality().hash(lastUpdateTime));

  @JsonKey(ignore: true)
  @override
  _$ProjectDetailStateCopyWith<_ProjectDetailState> get copyWith =>
      __$ProjectDetailStateCopyWithImpl<_ProjectDetailState>(this, _$identity);
}

abstract class _ProjectDetailState implements ProjectDetailState {
  const factory _ProjectDetailState(
      {Pubspec? pubspec, DateTime? lastUpdateTime}) = _$_ProjectDetailState;

  @override
  Pubspec? get pubspec;
  @override
  DateTime? get lastUpdateTime;
  @override
  @JsonKey(ignore: true)
  _$ProjectDetailStateCopyWith<_ProjectDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
