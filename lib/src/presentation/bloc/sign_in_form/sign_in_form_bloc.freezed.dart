// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInFormEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInFormEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignInFormEvent()';
  }
}

/// @nodoc
class $SignInFormEventCopyWith<$Res> {
  $SignInFormEventCopyWith(
      SignInFormEvent _, $Res Function(SignInFormEvent) __);
}

/// Adds pattern-matching-related methods to [SignInFormEvent].
extension SignInFormEventPatterns on SignInFormEvent {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _SignInWithEmail() when signInWithEmail != null:
        return signInWithEmail(_that);
      case _EmailOnChanged() when emailOnChanged != null:
        return emailOnChanged(_that);
      case _PasswordOnChanged() when passwordOnChanged != null:
        return passwordOnChanged(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _SignInWithEmail():
        return signInWithEmail(_that);
      case _EmailOnChanged():
        return emailOnChanged(_that);
      case _PasswordOnChanged():
        return passwordOnChanged(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _SignInWithEmail() when signInWithEmail != null:
        return signInWithEmail(_that);
      case _EmailOnChanged() when emailOnChanged != null:
        return emailOnChanged(_that);
      case _PasswordOnChanged() when passwordOnChanged != null:
        return passwordOnChanged(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _SignInWithEmail() when signInWithEmail != null:
        return signInWithEmail();
      case _EmailOnChanged() when emailOnChanged != null:
        return emailOnChanged(_that.email);
      case _PasswordOnChanged() when passwordOnChanged != null:
        return passwordOnChanged(_that.password);
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _SignInWithEmail():
        return signInWithEmail();
      case _EmailOnChanged():
        return emailOnChanged(_that.email);
      case _PasswordOnChanged():
        return passwordOnChanged(_that.password);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _SignInWithEmail() when signInWithEmail != null:
        return signInWithEmail();
      case _EmailOnChanged() when emailOnChanged != null:
        return emailOnChanged(_that.email);
      case _PasswordOnChanged() when passwordOnChanged != null:
        return passwordOnChanged(_that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements SignInFormEvent {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignInFormEvent.initial()';
  }
}

/// @nodoc

class _SignInWithEmail implements SignInFormEvent {
  const _SignInWithEmail();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignInWithEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmail()';
  }
}

/// @nodoc

class _EmailOnChanged implements SignInFormEvent {
  const _EmailOnChanged(this.email);

  final String email;

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EmailOnChangedCopyWith<_EmailOnChanged> get copyWith =>
      __$EmailOnChangedCopyWithImpl<_EmailOnChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailOnChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, email);
  }

  @override
  String toString() {
    return 'SignInFormEvent.emailOnChanged(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$EmailOnChangedCopyWith<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  factory _$EmailOnChangedCopyWith(
          _EmailOnChanged value, $Res Function(_EmailOnChanged) _then) =
      __$EmailOnChangedCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$EmailOnChangedCopyWithImpl<$Res>
    implements _$EmailOnChangedCopyWith<$Res> {
  __$EmailOnChangedCopyWithImpl(this._self, this._then);

  final _EmailOnChanged _self;
  final $Res Function(_EmailOnChanged) _then;

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_EmailOnChanged(
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _PasswordOnChanged implements SignInFormEvent {
  const _PasswordOnChanged(this.password);

  final String password;

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PasswordOnChangedCopyWith<_PasswordOnChanged> get copyWith =>
      __$PasswordOnChangedCopyWithImpl<_PasswordOnChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordOnChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, password);
  }

  @override
  String toString() {
    return 'SignInFormEvent.passwordOnChanged(password: $password)';
  }
}

/// @nodoc
abstract mixin class _$PasswordOnChangedCopyWith<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  factory _$PasswordOnChangedCopyWith(
          _PasswordOnChanged value, $Res Function(_PasswordOnChanged) _then) =
      __$PasswordOnChangedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$PasswordOnChangedCopyWithImpl<$Res>
    implements _$PasswordOnChangedCopyWith<$Res> {
  __$PasswordOnChangedCopyWithImpl(this._self, this._then);

  final _PasswordOnChanged _self;
  final $Res Function(_PasswordOnChanged) _then;

  /// Create a copy of SignInFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(_PasswordOnChanged(
      null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SignInFormState {
  RequestState get state;
  String get message;
  String get email;
  String get password;

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      _$SignInFormStateCopyWithImpl<SignInFormState>(
          this as SignInFormState, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as SignInFormState;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInFormState &&
            (identical(other.state, _this.state) ||
                other.state == _this.state) &&
            (identical(other.message, _this.message) ||
                other.message == _this.message) &&
            (identical(other.email, _this.email) ||
                other.email == _this.email) &&
            (identical(other.password, _this.password) ||
                other.password == _this.password));
  }

  @override
  int get hashCode {
    final _this = this as SignInFormState;
    return Object.hash(
        runtimeType, _this.state, _this.message, _this.email, _this.password);
  }

  @override
  String toString() {
    final _this = this as SignInFormState;
    return 'SignInFormState(state: ${_this.state}, message: ${_this.message}, email: ${_this.email}, password: ${_this.password})';
  }
}

/// @nodoc
abstract mixin class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) _then) =
      _$SignInFormStateCopyWithImpl;
  @useResult
  $Res call(
      {RequestState state, String message, String email, String password});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._self, this._then);

  final SignInFormState _self;
  final $Res Function(SignInFormState) _then;

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(SignInFormState(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SignInFormState].
extension SignInFormStatePatterns on SignInFormState {
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
    TResult Function(_SignInFormState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignInFormState() when $default != null:
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
    TResult Function(_SignInFormState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInFormState():
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
    TResult? Function(_SignInFormState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInFormState() when $default != null:
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
    TResult Function(
            RequestState state, String message, String email, String password)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignInFormState() when $default != null:
        return $default(
            _that.state, _that.message, _that.email, _that.password);
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
    TResult Function(
            RequestState state, String message, String email, String password)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInFormState():
        return $default(
            _that.state, _that.message, _that.email, _that.password);
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
    TResult? Function(
            RequestState state, String message, String email, String password)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignInFormState() when $default != null:
        return $default(
            _that.state, _that.message, _that.email, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SignInFormState implements SignInFormState {
  const _SignInFormState(
      {required this.state,
      required this.message,
      required this.email,
      required this.password});

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final String email;
  @override
  final String password;

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInFormState &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, state, message, email, password);
  }

  @override
  String toString() {
    return 'SignInFormState(state: $state, message: $message, email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) _then) =
      __$SignInFormStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {RequestState state, String message, String email, String password});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(this._self, this._then);

  final _SignInFormState _self;
  final $Res Function(_SignInFormState) _then;

  /// Create a copy of SignInFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_SignInFormState(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
