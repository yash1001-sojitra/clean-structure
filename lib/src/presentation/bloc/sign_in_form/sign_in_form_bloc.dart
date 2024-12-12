import 'package:clean_architecture/app/comman/enum.dart';
import 'package:clean_architecture/src/domain/usecase/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';


@singleton
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc(this._signInWithEmail) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      await event.map(
        initial: (_) {
          emit(SignInFormState.initial());
        },
        signInWithEmail: (_) async {
          emit(state.copyWith(state: RequestState.loading));
          final result = await _signInWithEmail.execute(
            state.email,
            state.password,
          );
          result.fold(
            (f) => emit(
              state.copyWith(
                state: RequestState.error,
                message: f.message,
              ),
            ),
            (_) => emit(state.copyWith(state: RequestState.loaded)),
          );
        },
        emailOnChanged: (event) {
          emit(state.copyWith(email: event.email));
        },
        passwordOnChanged: (event) {
          emit(state.copyWith(password: event.password));
        },
      );
    });
  }

  final SignIn _signInWithEmail;
}
