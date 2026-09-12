// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LanguageFormEvent {
  Locale get locale => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) selectLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Locale locale)? selectLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? selectLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectLanguage value) selectLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectLanguage value)? selectLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectLanguage value)? selectLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of LanguageFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageFormEventCopyWith<LanguageFormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageFormEventCopyWith<$Res> {
  factory $LanguageFormEventCopyWith(
          LanguageFormEvent value, $Res Function(LanguageFormEvent) then) =
      _$LanguageFormEventCopyWithImpl<$Res, LanguageFormEvent>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class _$LanguageFormEventCopyWithImpl<$Res, $Val extends LanguageFormEvent>
    implements $LanguageFormEventCopyWith<$Res> {
  _$LanguageFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectLanguageImplCopyWith<$Res>
    implements $LanguageFormEventCopyWith<$Res> {
  factory _$$SelectLanguageImplCopyWith(_$SelectLanguageImpl value,
          $Res Function(_$SelectLanguageImpl) then) =
      __$$SelectLanguageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$SelectLanguageImplCopyWithImpl<$Res>
    extends _$LanguageFormEventCopyWithImpl<$Res, _$SelectLanguageImpl>
    implements _$$SelectLanguageImplCopyWith<$Res> {
  __$$SelectLanguageImplCopyWithImpl(
      _$SelectLanguageImpl _value, $Res Function(_$SelectLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$SelectLanguageImpl(
      null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$SelectLanguageImpl implements _SelectLanguage {
  const _$SelectLanguageImpl(this.locale);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LanguageFormEvent.selectLanguage(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectLanguageImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  /// Create a copy of LanguageFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectLanguageImplCopyWith<_$SelectLanguageImpl> get copyWith =>
      __$$SelectLanguageImplCopyWithImpl<_$SelectLanguageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) selectLanguage,
  }) {
    return selectLanguage(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Locale locale)? selectLanguage,
  }) {
    return selectLanguage?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? selectLanguage,
    required TResult orElse(),
  }) {
    if (selectLanguage != null) {
      return selectLanguage(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectLanguage value) selectLanguage,
  }) {
    return selectLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectLanguage value)? selectLanguage,
  }) {
    return selectLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectLanguage value)? selectLanguage,
    required TResult orElse(),
  }) {
    if (selectLanguage != null) {
      return selectLanguage(this);
    }
    return orElse();
  }
}

abstract class _SelectLanguage implements LanguageFormEvent {
  const factory _SelectLanguage(final Locale locale) = _$SelectLanguageImpl;

  @override
  Locale get locale;

  /// Create a copy of LanguageFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectLanguageImplCopyWith<_$SelectLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LanguageFormState {
  RequestState get state => throw _privateConstructorUsedError;
  Locale get selectedLocale => throw _privateConstructorUsedError;
  List<Locale> get supportedLocales => throw _privateConstructorUsedError;

  /// Create a copy of LanguageFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageFormStateCopyWith<LanguageFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageFormStateCopyWith<$Res> {
  factory $LanguageFormStateCopyWith(
          LanguageFormState value, $Res Function(LanguageFormState) then) =
      _$LanguageFormStateCopyWithImpl<$Res, LanguageFormState>;
  @useResult
  $Res call(
      {RequestState state,
      Locale selectedLocale,
      List<Locale> supportedLocales});
}

/// @nodoc
class _$LanguageFormStateCopyWithImpl<$Res, $Val extends LanguageFormState>
    implements $LanguageFormStateCopyWith<$Res> {
  _$LanguageFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? selectedLocale = null,
    Object? supportedLocales = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      selectedLocale: null == selectedLocale
          ? _value.selectedLocale
          : selectedLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
      supportedLocales: null == supportedLocales
          ? _value.supportedLocales
          : supportedLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageFormStateImplCopyWith<$Res>
    implements $LanguageFormStateCopyWith<$Res> {
  factory _$$LanguageFormStateImplCopyWith(_$LanguageFormStateImpl value,
          $Res Function(_$LanguageFormStateImpl) then) =
      __$$LanguageFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      Locale selectedLocale,
      List<Locale> supportedLocales});
}

/// @nodoc
class __$$LanguageFormStateImplCopyWithImpl<$Res>
    extends _$LanguageFormStateCopyWithImpl<$Res, _$LanguageFormStateImpl>
    implements _$$LanguageFormStateImplCopyWith<$Res> {
  __$$LanguageFormStateImplCopyWithImpl(_$LanguageFormStateImpl _value,
      $Res Function(_$LanguageFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? selectedLocale = null,
    Object? supportedLocales = null,
  }) {
    return _then(_$LanguageFormStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      selectedLocale: null == selectedLocale
          ? _value.selectedLocale
          : selectedLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
      supportedLocales: null == supportedLocales
          ? _value._supportedLocales
          : supportedLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
    ));
  }
}

/// @nodoc

class _$LanguageFormStateImpl implements _LanguageFormState {
  const _$LanguageFormStateImpl(
      {required this.state,
      required this.selectedLocale,
      required final List<Locale> supportedLocales})
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

  @override
  String toString() {
    return 'LanguageFormState(state: $state, selectedLocale: $selectedLocale, supportedLocales: $supportedLocales)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageFormStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.selectedLocale, selectedLocale) ||
                other.selectedLocale == selectedLocale) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocales, _supportedLocales));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, selectedLocale,
      const DeepCollectionEquality().hash(_supportedLocales));

  /// Create a copy of LanguageFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageFormStateImplCopyWith<_$LanguageFormStateImpl> get copyWith =>
      __$$LanguageFormStateImplCopyWithImpl<_$LanguageFormStateImpl>(
          this, _$identity);
}

abstract class _LanguageFormState implements LanguageFormState {
  const factory _LanguageFormState(
      {required final RequestState state,
      required final Locale selectedLocale,
      required final List<Locale> supportedLocales}) = _$LanguageFormStateImpl;

  @override
  RequestState get state;
  @override
  Locale get selectedLocale;
  @override
  List<Locale> get supportedLocales;

  /// Create a copy of LanguageFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageFormStateImplCopyWith<_$LanguageFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
