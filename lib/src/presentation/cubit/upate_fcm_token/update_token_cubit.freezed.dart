// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_token_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateTokenState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTokenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTokenStateCopyWith<UpdateTokenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTokenStateCopyWith<$Res> {
  factory $UpdateTokenStateCopyWith(
          UpdateTokenState value, $Res Function(UpdateTokenState) then) =
      _$UpdateTokenStateCopyWithImpl<$Res, UpdateTokenState>;
  @useResult
  $Res call({RequestState state, String message});
}

/// @nodoc
class _$UpdateTokenStateCopyWithImpl<$Res, $Val extends UpdateTokenState>
    implements $UpdateTokenStateCopyWith<$Res> {
  _$UpdateTokenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTokenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTokenStateImplCopyWith<$Res>
    implements $UpdateTokenStateCopyWith<$Res> {
  factory _$$UpdateTokenStateImplCopyWith(_$UpdateTokenStateImpl value,
          $Res Function(_$UpdateTokenStateImpl) then) =
      __$$UpdateTokenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestState state, String message});
}

/// @nodoc
class __$$UpdateTokenStateImplCopyWithImpl<$Res>
    extends _$UpdateTokenStateCopyWithImpl<$Res, _$UpdateTokenStateImpl>
    implements _$$UpdateTokenStateImplCopyWith<$Res> {
  __$$UpdateTokenStateImplCopyWithImpl(_$UpdateTokenStateImpl _value,
      $Res Function(_$UpdateTokenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateTokenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
  }) {
    return _then(_$UpdateTokenStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateTokenStateImpl implements _UpdateTokenState {
  const _$UpdateTokenStateImpl({required this.state, required this.message});

  @override
  final RequestState state;
  @override
  final String message;

  @override
  String toString() {
    return 'UpdateTokenState(state: $state, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTokenStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, message);

  /// Create a copy of UpdateTokenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTokenStateImplCopyWith<_$UpdateTokenStateImpl> get copyWith =>
      __$$UpdateTokenStateImplCopyWithImpl<_$UpdateTokenStateImpl>(
          this, _$identity);
}

abstract class _UpdateTokenState implements UpdateTokenState {
  const factory _UpdateTokenState(
      {required final RequestState state,
      required final String message}) = _$UpdateTokenStateImpl;

  @override
  RequestState get state;
  @override
  String get message;

  /// Create a copy of UpdateTokenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTokenStateImplCopyWith<_$UpdateTokenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
