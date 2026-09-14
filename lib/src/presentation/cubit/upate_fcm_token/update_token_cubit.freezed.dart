// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_token_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateTokenState {
  RequestState get state;
  String get message;

  /// Create a copy of UpdateTokenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateTokenStateCopyWith<UpdateTokenState> get copyWith =>
      _$UpdateTokenStateCopyWithImpl<UpdateTokenState>(
          this as UpdateTokenState, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as UpdateTokenState;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateTokenState &&
            (identical(other.state, _this.state) ||
                other.state == _this.state) &&
            (identical(other.message, _this.message) ||
                other.message == _this.message));
  }

  @override
  int get hashCode {
    final _this = this as UpdateTokenState;
    return Object.hash(runtimeType, _this.state, _this.message);
  }

  @override
  String toString() {
    final _this = this as UpdateTokenState;
    return 'UpdateTokenState(state: ${_this.state}, message: ${_this.message})';
  }
}

/// @nodoc
abstract mixin class $UpdateTokenStateCopyWith<$Res> {
  factory $UpdateTokenStateCopyWith(
          UpdateTokenState value, $Res Function(UpdateTokenState) _then) =
      _$UpdateTokenStateCopyWithImpl;
  @useResult
  $Res call({RequestState state, String message});
}

/// @nodoc
class _$UpdateTokenStateCopyWithImpl<$Res>
    implements $UpdateTokenStateCopyWith<$Res> {
  _$UpdateTokenStateCopyWithImpl(this._self, this._then);

  final UpdateTokenState _self;
  final $Res Function(UpdateTokenState) _then;

  /// Create a copy of UpdateTokenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
  }) {
    return _then(UpdateTokenState(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateTokenState].
extension UpdateTokenStatePatterns on UpdateTokenState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UpdateTokenState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateTokenState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UpdateTokenState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateTokenState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UpdateTokenState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateTokenState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(RequestState state, String message)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateTokenState() when $default != null:
        return $default(_that.state, _that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(RequestState state, String message) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateTokenState():
        return $default(_that.state, _that.message);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(RequestState state, String message)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateTokenState() when $default != null:
        return $default(_that.state, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UpdateTokenState implements UpdateTokenState {
  const _UpdateTokenState({required this.state, required this.message});

  @override
  final RequestState state;
  @override
  final String message;

  /// Create a copy of UpdateTokenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateTokenStateCopyWith<_UpdateTokenState> get copyWith =>
      __$UpdateTokenStateCopyWithImpl<_UpdateTokenState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateTokenState &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, state, message);
  }

  @override
  String toString() {
    return 'UpdateTokenState(state: $state, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$UpdateTokenStateCopyWith<$Res>
    implements $UpdateTokenStateCopyWith<$Res> {
  factory _$UpdateTokenStateCopyWith(
          _UpdateTokenState value, $Res Function(_UpdateTokenState) _then) =
      __$UpdateTokenStateCopyWithImpl;
  @override
  @useResult
  $Res call({RequestState state, String message});
}

/// @nodoc
class __$UpdateTokenStateCopyWithImpl<$Res>
    implements _$UpdateTokenStateCopyWith<$Res> {
  __$UpdateTokenStateCopyWithImpl(this._self, this._then);

  final _UpdateTokenState _self;
  final $Res Function(_UpdateTokenState) _then;

  /// Create a copy of UpdateTokenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
    Object? message = null,
  }) {
    return _then(_UpdateTokenState(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
