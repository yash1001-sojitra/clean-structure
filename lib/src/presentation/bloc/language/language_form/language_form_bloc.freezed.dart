// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LanguageFormEvent {
  Locale get locale;

  /// Create a copy of LanguageFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LanguageFormEventCopyWith<LanguageFormEvent> get copyWith =>
      _$LanguageFormEventCopyWithImpl<LanguageFormEvent>(
          this as LanguageFormEvent, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as LanguageFormEvent;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LanguageFormEvent &&
            (identical(other.locale, _this.locale) ||
                other.locale == _this.locale));
  }

  @override
  int get hashCode {
    final _this = this as LanguageFormEvent;
    return Object.hash(runtimeType, _this.locale);
  }

  @override
  String toString() {
    final _this = this as LanguageFormEvent;
    return 'LanguageFormEvent(locale: ${_this.locale})';
  }
}

/// @nodoc
abstract mixin class $LanguageFormEventCopyWith<$Res> {
  factory $LanguageFormEventCopyWith(
          LanguageFormEvent value, $Res Function(LanguageFormEvent) _then) =
      _$LanguageFormEventCopyWithImpl;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class _$LanguageFormEventCopyWithImpl<$Res>
    implements $LanguageFormEventCopyWith<$Res> {
  _$LanguageFormEventCopyWithImpl(this._self, this._then);

  final LanguageFormEvent _self;
  final $Res Function(LanguageFormEvent) _then;

  /// Create a copy of LanguageFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(LanguageFormEvent.selectLanguage(
      null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// Adds pattern-matching-related methods to [LanguageFormEvent].
extension LanguageFormEventPatterns on LanguageFormEvent {
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
    TResult Function(_SelectLanguage value)? selectLanguage,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SelectLanguage() when selectLanguage != null:
        return selectLanguage(_that);
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
    required TResult Function(_SelectLanguage value) selectLanguage,
  }) {
    final _that = this;
    switch (_that) {
      case _SelectLanguage():
        return selectLanguage(_that);
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
    TResult? Function(_SelectLanguage value)? selectLanguage,
  }) {
    final _that = this;
    switch (_that) {
      case _SelectLanguage() when selectLanguage != null:
        return selectLanguage(_that);
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
    TResult Function(Locale locale)? selectLanguage,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SelectLanguage() when selectLanguage != null:
        return selectLanguage(_that.locale);
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
    required TResult Function(Locale locale) selectLanguage,
  }) {
    final _that = this;
    switch (_that) {
      case _SelectLanguage():
        return selectLanguage(_that.locale);
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
    TResult? Function(Locale locale)? selectLanguage,
  }) {
    final _that = this;
    switch (_that) {
      case _SelectLanguage() when selectLanguage != null:
        return selectLanguage(_that.locale);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SelectLanguage implements LanguageFormEvent {
  const _SelectLanguage(this.locale);

  @override
  final Locale locale;

  /// Create a copy of LanguageFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SelectLanguageCopyWith<_SelectLanguage> get copyWith =>
      __$SelectLanguageCopyWithImpl<_SelectLanguage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectLanguage &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, locale);
  }

  @override
  String toString() {
    return 'LanguageFormEvent.selectLanguage(locale: $locale)';
  }
}

/// @nodoc
abstract mixin class _$SelectLanguageCopyWith<$Res>
    implements $LanguageFormEventCopyWith<$Res> {
  factory _$SelectLanguageCopyWith(
          _SelectLanguage value, $Res Function(_SelectLanguage) _then) =
      __$SelectLanguageCopyWithImpl;
  @override
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$SelectLanguageCopyWithImpl<$Res>
    implements _$SelectLanguageCopyWith<$Res> {
  __$SelectLanguageCopyWithImpl(this._self, this._then);

  final _SelectLanguage _self;
  final $Res Function(_SelectLanguage) _then;

  /// Create a copy of LanguageFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? locale = null,
  }) {
    return _then(_SelectLanguage(
      null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
mixin _$LanguageFormState {
  RequestState get state;
  Locale get selectedLocale;
  List<Locale> get supportedLocales;

  /// Create a copy of LanguageFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LanguageFormStateCopyWith<LanguageFormState> get copyWith =>
      _$LanguageFormStateCopyWithImpl<LanguageFormState>(
          this as LanguageFormState, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as LanguageFormState;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LanguageFormState &&
            (identical(other.state, _this.state) ||
                other.state == _this.state) &&
            (identical(other.selectedLocale, _this.selectedLocale) ||
                other.selectedLocale == _this.selectedLocale) &&
            const DeepCollectionEquality()
                .equals(other.supportedLocales, _this.supportedLocales));
  }

  @override
  int get hashCode {
    final _this = this as LanguageFormState;
    return Object.hash(runtimeType, _this.state, _this.selectedLocale,
        const DeepCollectionEquality().hash(_this.supportedLocales));
  }

  @override
  String toString() {
    final _this = this as LanguageFormState;
    return 'LanguageFormState(state: ${_this.state}, selectedLocale: ${_this.selectedLocale}, supportedLocales: ${_this.supportedLocales})';
  }
}

/// @nodoc
abstract mixin class $LanguageFormStateCopyWith<$Res> {
  factory $LanguageFormStateCopyWith(
          LanguageFormState value, $Res Function(LanguageFormState) _then) =
      _$LanguageFormStateCopyWithImpl;
  @useResult
  $Res call(
      {RequestState state,
      Locale selectedLocale,
      List<Locale> supportedLocales});
}

/// @nodoc
class _$LanguageFormStateCopyWithImpl<$Res>
    implements $LanguageFormStateCopyWith<$Res> {
  _$LanguageFormStateCopyWithImpl(this._self, this._then);

  final LanguageFormState _self;
  final $Res Function(LanguageFormState) _then;

  /// Create a copy of LanguageFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? selectedLocale = null,
    Object? supportedLocales = null,
  }) {
    return _then(LanguageFormState(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      selectedLocale: null == selectedLocale
          ? _self.selectedLocale
          : selectedLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
      supportedLocales: null == supportedLocales
          ? _self.supportedLocales
          : supportedLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
    ));
  }
}

/// Adds pattern-matching-related methods to [LanguageFormState].
extension LanguageFormStatePatterns on LanguageFormState {
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
    TResult Function(_LanguageFormState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LanguageFormState() when $default != null:
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
    TResult Function(_LanguageFormState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LanguageFormState():
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
    TResult? Function(_LanguageFormState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LanguageFormState() when $default != null:
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
    TResult Function(RequestState state, Locale selectedLocale,
            List<Locale> supportedLocales)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LanguageFormState() when $default != null:
        return $default(
            _that.state, _that.selectedLocale, _that.supportedLocales);
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
    TResult Function(RequestState state, Locale selectedLocale,
            List<Locale> supportedLocales)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LanguageFormState():
        return $default(
            _that.state, _that.selectedLocale, _that.supportedLocales);
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
    TResult? Function(RequestState state, Locale selectedLocale,
            List<Locale> supportedLocales)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LanguageFormState() when $default != null:
        return $default(
            _that.state, _that.selectedLocale, _that.supportedLocales);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LanguageFormState implements LanguageFormState {
  const _LanguageFormState(
      {required this.state,
      required this.selectedLocale,
      required List<Locale> supportedLocales})
      : _supportedLocales = supportedLocales;

  @override
  final RequestState state;
  @override
  final Locale selectedLocale;
  final List<Locale> _supportedLocales;
  @override
  List<Locale> get supportedLocales {
    if (_supportedLocales is EqualUnmodifiableListView)
      return _supportedLocales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedLocales);
  }

  /// Create a copy of LanguageFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LanguageFormStateCopyWith<_LanguageFormState> get copyWith =>
      __$LanguageFormStateCopyWithImpl<_LanguageFormState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LanguageFormState &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.selectedLocale, selectedLocale) ||
                other.selectedLocale == selectedLocale) &&
            const DeepCollectionEquality()
                .equals(other.supportedLocales, _supportedLocales));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, state, selectedLocale,
        const DeepCollectionEquality().hash(_supportedLocales));
  }

  @override
  String toString() {
    return 'LanguageFormState(state: $state, selectedLocale: $selectedLocale, supportedLocales: $supportedLocales)';
  }
}

/// @nodoc
abstract mixin class _$LanguageFormStateCopyWith<$Res>
    implements $LanguageFormStateCopyWith<$Res> {
  factory _$LanguageFormStateCopyWith(
          _LanguageFormState value, $Res Function(_LanguageFormState) _then) =
      __$LanguageFormStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {RequestState state,
      Locale selectedLocale,
      List<Locale> supportedLocales});
}

/// @nodoc
class __$LanguageFormStateCopyWithImpl<$Res>
    implements _$LanguageFormStateCopyWith<$Res> {
  __$LanguageFormStateCopyWithImpl(this._self, this._then);

  final _LanguageFormState _self;
  final $Res Function(_LanguageFormState) _then;

  /// Create a copy of LanguageFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
    Object? selectedLocale = null,
    Object? supportedLocales = null,
  }) {
    return _then(_LanguageFormState(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      selectedLocale: null == selectedLocale
          ? _self.selectedLocale
          : selectedLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
      supportedLocales: null == supportedLocales
          ? _self._supportedLocales
          : supportedLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
    ));
  }
}

// dart format on
