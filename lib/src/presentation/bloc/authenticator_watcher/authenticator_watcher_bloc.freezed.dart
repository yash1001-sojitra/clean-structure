// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticator_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthenticatorWatcherEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticatorWatcherEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorWatcherEvent()';
  }
}

/// @nodoc
class $AuthenticatorWatcherEventCopyWith<$Res> {
  $AuthenticatorWatcherEventCopyWith(
      AuthenticatorWatcherEvent _, $Res Function(AuthenticatorWatcherEvent) __);
}

/// Adds pattern-matching-related methods to [AuthenticatorWatcherEvent].
extension AuthenticatorWatcherEventPatterns on AuthenticatorWatcherEvent {
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
    TResult Function(_AuthCheckRequest value)? authCheckRequest,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthCheckRequest() when authCheckRequest != null:
        return authCheckRequest(_that);
      case _SignOut() when signOut != null:
        return signOut(_that);
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
    required TResult Function(_AuthCheckRequest value) authCheckRequest,
    required TResult Function(_SignOut value) signOut,
  }) {
    final _that = this;
    switch (_that) {
      case _AuthCheckRequest():
        return authCheckRequest(_that);
      case _SignOut():
        return signOut(_that);
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
    TResult? Function(_AuthCheckRequest value)? authCheckRequest,
    TResult? Function(_SignOut value)? signOut,
  }) {
    final _that = this;
    switch (_that) {
      case _AuthCheckRequest() when authCheckRequest != null:
        return authCheckRequest(_that);
      case _SignOut() when signOut != null:
        return signOut(_that);
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
    TResult Function()? authCheckRequest,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthCheckRequest() when authCheckRequest != null:
        return authCheckRequest();
      case _SignOut() when signOut != null:
        return signOut();
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
    required TResult Function() authCheckRequest,
    required TResult Function() signOut,
  }) {
    final _that = this;
    switch (_that) {
      case _AuthCheckRequest():
        return authCheckRequest();
      case _SignOut():
        return signOut();
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
    TResult? Function()? authCheckRequest,
    TResult? Function()? signOut,
  }) {
    final _that = this;
    switch (_that) {
      case _AuthCheckRequest() when authCheckRequest != null:
        return authCheckRequest();
      case _SignOut() when signOut != null:
        return signOut();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AuthCheckRequest implements AuthenticatorWatcherEvent {
  const _AuthCheckRequest();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthCheckRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorWatcherEvent.authCheckRequest()';
  }
}

/// @nodoc

class _SignOut implements AuthenticatorWatcherEvent {
  const _SignOut();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorWatcherEvent.signOut()';
  }
}

/// @nodoc
mixin _$AuthenticatorWatcherState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticatorWatcherState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorWatcherState()';
  }
}

/// @nodoc
class $AuthenticatorWatcherStateCopyWith<$Res> {
  $AuthenticatorWatcherStateCopyWith(
      AuthenticatorWatcherState _, $Res Function(AuthenticatorWatcherState) __);
}

/// Adds pattern-matching-related methods to [AuthenticatorWatcherState].
extension AuthenticatorWatcherStatePatterns on AuthenticatorWatcherState {
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
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_IsFirstTime value)? isFirstTime,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Authenticating() when authenticating != null:
        return authenticating(_that);
      case _Authenticated() when authenticated != null:
        return authenticated(_that);
      case _Unauthenticated() when unauthenticated != null:
        return unauthenticated(_that);
      case _IsFirstTime() when isFirstTime != null:
        return isFirstTime(_that);
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
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_IsFirstTime value) isFirstTime,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _Authenticating():
        return authenticating(_that);
      case _Authenticated():
        return authenticated(_that);
      case _Unauthenticated():
        return unauthenticated(_that);
      case _IsFirstTime():
        return isFirstTime(_that);
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
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_IsFirstTime value)? isFirstTime,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Authenticating() when authenticating != null:
        return authenticating(_that);
      case _Authenticated() when authenticated != null:
        return authenticated(_that);
      case _Unauthenticated() when unauthenticated != null:
        return unauthenticated(_that);
      case _IsFirstTime() when isFirstTime != null:
        return isFirstTime(_that);
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
    TResult Function()? authenticating,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? isFirstTime,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Authenticating() when authenticating != null:
        return authenticating();
      case _Authenticated() when authenticated != null:
        return authenticated();
      case _Unauthenticated() when unauthenticated != null:
        return unauthenticated();
      case _IsFirstTime() when isFirstTime != null:
        return isFirstTime();
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
    required TResult Function() authenticating,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() isFirstTime,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _Authenticating():
        return authenticating();
      case _Authenticated():
        return authenticated();
      case _Unauthenticated():
        return unauthenticated();
      case _IsFirstTime():
        return isFirstTime();
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
    TResult? Function()? authenticating,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? isFirstTime,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Authenticating() when authenticating != null:
        return authenticating();
      case _Authenticated() when authenticated != null:
        return authenticated();
      case _Unauthenticated() when unauthenticated != null:
        return unauthenticated();
      case _IsFirstTime() when isFirstTime != null:
        return isFirstTime();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements AuthenticatorWatcherState {
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
    return 'AuthenticatorWatcherState.initial()';
  }
}

/// @nodoc

class _Authenticating implements AuthenticatorWatcherState {
  const _Authenticating();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Authenticating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorWatcherState.authenticating()';
  }
}

/// @nodoc

class _Authenticated implements AuthenticatorWatcherState {
  const _Authenticated();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorWatcherState.authenticated()';
  }
}

/// @nodoc

class _Unauthenticated implements AuthenticatorWatcherState {
  const _Unauthenticated();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorWatcherState.unauthenticated()';
  }
}

/// @nodoc

class _IsFirstTime implements AuthenticatorWatcherState {
  const _IsFirstTime();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _IsFirstTime);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticatorWatcherState.isFirstTime()';
  }
}

// dart format on
