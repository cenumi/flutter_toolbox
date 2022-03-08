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
class _$_ProjectDetailStateTearOff {
  const _$_ProjectDetailStateTearOff();

  __ProjectDetailState call({Pubspec? pubspec}) {
    return __ProjectDetailState(
      pubspec: pubspec,
    );
  }
}

/// @nodoc
const _$ProjectDetailState = _$_ProjectDetailStateTearOff();

/// @nodoc
mixin _$_ProjectDetailState {
  Pubspec? get pubspec => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ProjectDetailStateCopyWith<_ProjectDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProjectDetailStateCopyWith<$Res> {
  factory _$ProjectDetailStateCopyWith(
          _ProjectDetailState value, $Res Function(_ProjectDetailState) then) =
      __$ProjectDetailStateCopyWithImpl<$Res>;
  $Res call({Pubspec? pubspec});
}

/// @nodoc
class __$ProjectDetailStateCopyWithImpl<$Res>
    implements _$ProjectDetailStateCopyWith<$Res> {
  __$ProjectDetailStateCopyWithImpl(this._value, this._then);

  final _ProjectDetailState _value;
  // ignore: unused_field
  final $Res Function(_ProjectDetailState) _then;

  @override
  $Res call({
    Object? pubspec = freezed,
  }) {
    return _then(_value.copyWith(
      pubspec: pubspec == freezed
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as Pubspec?,
    ));
  }
}

/// @nodoc
abstract class _$_ProjectDetailStateCopyWith<$Res>
    implements _$ProjectDetailStateCopyWith<$Res> {
  factory _$_ProjectDetailStateCopyWith(__ProjectDetailState value,
          $Res Function(__ProjectDetailState) then) =
      __$_ProjectDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({Pubspec? pubspec});
}

/// @nodoc
class __$_ProjectDetailStateCopyWithImpl<$Res>
    extends __$ProjectDetailStateCopyWithImpl<$Res>
    implements _$_ProjectDetailStateCopyWith<$Res> {
  __$_ProjectDetailStateCopyWithImpl(
      __ProjectDetailState _value, $Res Function(__ProjectDetailState) _then)
      : super(_value, (v) => _then(v as __ProjectDetailState));

  @override
  __ProjectDetailState get _value => super._value as __ProjectDetailState;

  @override
  $Res call({
    Object? pubspec = freezed,
  }) {
    return _then(__ProjectDetailState(
      pubspec: pubspec == freezed
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as Pubspec?,
    ));
  }
}

/// @nodoc

class _$__ProjectDetailState extends __ProjectDetailState {
  const _$__ProjectDetailState({this.pubspec}) : super._();

  @override
  final Pubspec? pubspec;

  @override
  String toString() {
    return '_ProjectDetailState(pubspec: $pubspec)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __ProjectDetailState &&
            const DeepCollectionEquality().equals(other.pubspec, pubspec));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pubspec));

  @JsonKey(ignore: true)
  @override
  _$_ProjectDetailStateCopyWith<__ProjectDetailState> get copyWith =>
      __$_ProjectDetailStateCopyWithImpl<__ProjectDetailState>(
          this, _$identity);
}

abstract class __ProjectDetailState extends _ProjectDetailState {
  const factory __ProjectDetailState({Pubspec? pubspec}) =
      _$__ProjectDetailState;
  const __ProjectDetailState._() : super._();

  @override
  Pubspec? get pubspec;
  @override
  @JsonKey(ignore: true)
  _$_ProjectDetailStateCopyWith<__ProjectDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
