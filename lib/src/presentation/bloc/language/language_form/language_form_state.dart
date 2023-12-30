part of 'language_form_bloc.dart';

@freezed
class LanguageFormState with _$LanguageFormState {
  const factory LanguageFormState({
    required RequestState state,
    required Locale selectedLocale,
    required List<Locale> supportedLocales,
  }) = _LanguageFormState;

  factory LanguageFormState.initial() =>  LanguageFormState(
        state: RequestState.empty,
        selectedLocale: L10n.all.first,
        supportedLocales: L10n.all,
      );
}
