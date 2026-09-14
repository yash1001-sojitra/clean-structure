part of 'update_token_cubit.dart';

@freezed
abstract class UpdateTokenState with _$UpdateTokenState {
  const factory UpdateTokenState({
    required RequestState state,
    required String message,
  }) = _UpdateTokenState;

  factory UpdateTokenState.initial() => const UpdateTokenState(
        state: RequestState.empty,
        message: '',
      );
}
