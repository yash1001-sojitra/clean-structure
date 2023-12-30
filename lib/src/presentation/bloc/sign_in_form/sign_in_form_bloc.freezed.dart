// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res, SignInFormEvent>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res, $Val extends SignInFormEvent>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignInFormEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignInFormEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SignInWithEmailImplCopyWith<$Res> {
  factory _$$SignInWithEmailImplCopyWith(_$SignInWithEmailImpl value,
          $Res Function(_$SignInWithEmailImpl) then) =
      __$$SignInWithEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithEmailImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SignInWithEmailImpl>
    implements _$$SignInWithEmailImplCopyWith<$Res> {
  __$$SignInWithEmailImplCopyWithImpl(
      _$SignInWithEmailImpl _value, $Res Function(_$SignInWithEmailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithEmailImpl implements _SignInWithEmail {
  const _$SignInWithEmailImpl();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
  }) {
    return signInWithEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
  }) {
    return signInWithEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
  }) {
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
  }) {
    return signInWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    required TResult orElse(),
  }) {
    if (signInWithEmail != null) {
      return signInWithEmail(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmail implements SignInFormEvent {
  const factory _SignInWithEmail() = _$SignInWithEmailImpl;
}

/// @nodoc
abstract class _$$EmailOnChangedImplCopyWith<$Res> {
  factory _$$EmailOnChangedImplCopyWith(_$EmailOnChangedImpl value,
          $Res Function(_$EmailOnChangedImpl) then) =
      __$$EmailOnChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailOnChangedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$EmailOnChangedImpl>
    implements _$$EmailOnChangedImplCopyWith<$Res> {
  __$$EmailOnChangedImplCopyWithImpl(
      _$EmailOnChangedImpl _value, $Res Function(_$EmailOnChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailOnChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailOnChangedImpl implements _EmailOnChanged {
  const _$EmailOnChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInFormEvent.emailOnChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailOnChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailOnChangedImplCopyWith<_$EmailOnChangedImpl> get copyWith =>
      __$$EmailOnChangedImplCopyWithImpl<_$EmailOnChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
  }) {
    return emailOnChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
  }) {
    return emailOnChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    required TResult orElse(),
  }) {
    if (emailOnChanged != null) {
      return emailOnChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
  }) {
    return emailOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
  }) {
    return emailOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    required TResult orElse(),
  }) {
    if (emailOnChanged != null) {
      return emailOnChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailOnChanged implements SignInFormEvent {
  const factory _EmailOnChanged(final String email) = _$EmailOnChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailOnChangedImplCopyWith<_$EmailOnChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordOnChangedImplCopyWith<$Res> {
  factory _$$PasswordOnChangedImplCopyWith(_$PasswordOnChangedImpl value,
          $Res Function(_$PasswordOnChangedImpl) then) =
      __$$PasswordOnChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordOnChangedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$PasswordOnChangedImpl>
    implements _$$PasswordOnChangedImplCopyWith<$Res> {
  __$$PasswordOnChangedImplCopyWithImpl(_$PasswordOnChangedImpl _value,
      $Res Function(_$PasswordOnChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordOnChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordOnChangedImpl implements _PasswordOnChanged {
  const _$PasswordOnChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInFormEvent.passwordOnChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordOnChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordOnChangedImplCopyWith<_$PasswordOnChangedImpl> get copyWith =>
      __$$PasswordOnChangedImplCopyWithImpl<_$PasswordOnChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInWithEmail,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
  }) {
    return passwordOnChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInWithEmail,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
  }) {
    return passwordOnChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInWithEmail,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    required TResult orElse(),
  }) {
    if (passwordOnChanged != null) {
      return passwordOnChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignInWithEmail value) signInWithEmail,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
  }) {
    return passwordOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignInWithEmail value)? signInWithEmail,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
  }) {
    return passwordOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignInWithEmail value)? signInWithEmail,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    required TResult orElse(),
  }) {
    if (passwordOnChanged != null) {
      return passwordOnChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordOnChanged implements SignInFormEvent {
  const factory _PasswordOnChanged(final String password) =
      _$PasswordOnChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordOnChangedImplCopyWith<_$PasswordOnChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInFormState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res, SignInFormState>;
  @useResult
  $Res call(
      {RequestState state, String message, String email, String password});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res, $Val extends SignInFormState>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? email = null,
    Object? password = null,
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInFormStateImplCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$SignInFormStateImplCopyWith(_$SignInFormStateImpl value,
          $Res Function(_$SignInFormStateImpl) then) =
      __$$SignInFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state, String message, String email, String password});
}

/// @nodoc
class __$$SignInFormStateImplCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res, _$SignInFormStateImpl>
    implements _$$SignInFormStateImplCopyWith<$Res> {
  __$$SignInFormStateImplCopyWithImpl(
      _$SignInFormStateImpl _value, $Res Function(_$SignInFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInFormStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInFormStateImpl implements _SignInFormState {
  const _$SignInFormStateImpl(
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

  @override
  String toString() {
    return 'SignInFormState(state: $state, message: $message, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFormStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, message, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFormStateImplCopyWith<_$SignInFormStateImpl> get copyWith =>
      __$$SignInFormStateImplCopyWithImpl<_$SignInFormStateImpl>(
          this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required final RequestState state,
      required final String message,
      required final String email,
      required final String password}) = _$SignInFormStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignInFormStateImplCopyWith<_$SignInFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
