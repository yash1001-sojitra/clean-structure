import 'package:clean_architecture/src/domain/usecase/check_auth_status.dart';
import 'package:clean_architecture/src/domain/usecase/logout.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authenticator_watcher_event.dart';
part 'authenticator_watcher_state.dart';
part 'authenticator_watcher_bloc.freezed.dart';

@singleton
class AuthenticatorWatcherBloc
    extends Bloc<AuthenticatorWatcherEvent, AuthenticatorWatcherState> {
  AuthenticatorWatcherBloc(
    this._checkAuthStatus,
    this._logout,
  ) : super(const AuthenticatorWatcherState.initial()) {
    on<AuthenticatorWatcherEvent>((event, emit) async {
      await event.map(
        authCheckRequest: (_) async {
          emit(const AuthenticatorWatcherState.authenticating());
          final result = await _checkAuthStatus.execute();
          result.fold(
            (failure) => emit(const AuthenticatorWatcherState.unauthenticated()),
            (isAuthenticated) {
              if (isAuthenticated) {
                emit(const AuthenticatorWatcherState.authenticated());
              } else {
                emit(const AuthenticatorWatcherState.unauthenticated());
              }
            },
          );
        },
        signOut: (_) async {
          emit(const AuthenticatorWatcherState.authenticating());
          await _logout.execute();
          emit(const AuthenticatorWatcherState.unauthenticated());
        },
      );
    });
  }

  final CheckAuthStatus _checkAuthStatus;
  final Logout _logout;
}
