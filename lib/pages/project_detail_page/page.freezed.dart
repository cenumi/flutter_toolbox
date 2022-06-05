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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectDetailState {
  Pubspec? get pubspec => throw _privateConstructorUsedError;
  DateTime? get lastUpdateTime => throw _privateConstructorUsedError;
  List<String> get errorMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectDetailStateCopyWith<ProjectDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDetailStateCopyWith<$Res> {
  factory $ProjectDetailStateCopyWith(
          ProjectDetailState value, $Res Function(ProjectDetailState) then) =
      _$ProjectDetailStateCopyWithImpl<$Res>;
  $Res call(
      {Pubspec? pubspec, DateTime? lastUpdateTime, List<String> errorMessages});
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
    Object? errorMessages = freezed,
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
      errorMessages: errorMessages == freezed
          ? _value.errorMessages
          : errorMessages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_ProjectDetailStateCopyWith<$Res>
    implements $ProjectDetailStateCopyWith<$Res> {
  factory _$$_ProjectDetailStateCopyWith(_$_ProjectDetailState value,
          $Res Function(_$_ProjectDetailState) then) =
      __$$_ProjectDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Pubspec? pubspec, DateTime? lastUpdateTime, List<String> errorMessages});
}

/// @nodoc
class __$$_ProjectDetailStateCopyWithImpl<$Res>
    extends _$ProjectDetailStateCopyWithImpl<$Res>
    implements _$$_ProjectDetailStateCopyWith<$Res> {
  __$$_ProjectDetailStateCopyWithImpl(
      _$_ProjectDetailState _value, $Res Function(_$_ProjectDetailState) _then)
      : super(_value, (v) => _then(v as _$_ProjectDetailState));

  @override
  _$_ProjectDetailState get _value => super._value as _$_ProjectDetailState;

  @override
  $Res call({
    Object? pubspec = freezed,
    Object? lastUpdateTime = freezed,
    Object? errorMessages = freezed,
  }) {
    return _then(_$_ProjectDetailState(
      pubspec: pubspec == freezed
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as Pubspec?,
      lastUpdateTime: lastUpdateTime == freezed
          ? _value.lastUpdateTime
          : lastUpdateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      errorMessages: errorMessages == freezed
          ? _value._errorMessages
          : errorMessages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ProjectDetailState implements _ProjectDetailState {
  const _$_ProjectDetailState(
      {this.pubspec,
      this.lastUpdateTime,
      final List<String> errorMessages = const []})
      : _errorMessages = errorMessages;

  @override
  final Pubspec? pubspec;
  @override
  final DateTime? lastUpdateTime;
  final List<String> _errorMessages;
  @override
  @JsonKey()
  List<String> get errorMessages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errorMessages);
  }

  @override
  String toString() {
    return 'ProjectDetailState(pubspec: $pubspec, lastUpdateTime: $lastUpdateTime, errorMessages: $errorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectDetailState &&
            const DeepCollectionEquality().equals(other.pubspec, pubspec) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdateTime, lastUpdateTime) &&
            const DeepCollectionEquality()
                .equals(other._errorMessages, _errorMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pubspec),
      const DeepCollectionEquality().hash(lastUpdateTime),
      const DeepCollectionEquality().hash(_errorMessages));

  @JsonKey(ignore: true)
  @override
  _$$_ProjectDetailStateCopyWith<_$_ProjectDetailState> get copyWith =>
      __$$_ProjectDetailStateCopyWithImpl<_$_ProjectDetailState>(
          this, _$identity);
}

abstract class _ProjectDetailState implements ProjectDetailState {
  const factory _ProjectDetailState(
      {final Pubspec? pubspec,
      final DateTime? lastUpdateTime,
      final List<String> errorMessages}) = _$_ProjectDetailState;

  @override
  Pubspec? get pubspec => throw _privateConstructorUsedError;
  @override
  DateTime? get lastUpdateTime => throw _privateConstructorUsedError;
  @override
  List<String> get errorMessages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectDetailStateCopyWith<_$_ProjectDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
