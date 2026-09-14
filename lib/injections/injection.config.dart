// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clean_architecture/injections/network_module.dart' as _i100;
import 'package:clean_architecture/src/data/datasource/authentication_local_data_source.dart'
    as _i101;
import 'package:clean_architecture/src/data/datasource/authentication_remote_data_source.dart'
    as _i198;
import 'package:clean_architecture/src/data/repository/authentication_repository_impl.dart'
    as _i314;
import 'package:clean_architecture/src/domain/repositories/authentication_repository.dart'
    as _i914;
import 'package:clean_architecture/src/domain/usecase/check_auth_status.dart'
    as _i99;
import 'package:clean_architecture/src/domain/usecase/login.dart' as _i98;
import 'package:clean_architecture/src/domain/usecase/logout.dart' as _i97;
import 'package:clean_architecture/src/presentation/bloc/authenticator_watcher/authenticator_watcher_bloc.dart'
    as _i793;
import 'package:clean_architecture/src/presentation/bloc/language/language_form/language_form_bloc.dart'
    as _i505;
import 'package:clean_architecture/src/presentation/bloc/network/network_bloc.dart'
    as _i297;
import 'package:clean_architecture/src/presentation/bloc/sign_in_form/sign_in_form_bloc.dart'
    as _i154;
import 'package:clean_architecture/src/presentation/cubit/theme/theme_cubit.dart'
    as _i291;
import 'package:clean_architecture/src/presentation/cubit/update_fcm_token/update_token_cubit.dart'
    as _i627;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();

    // External / Core
    gh.lazySingleton<_i361.Dio>(() => networkModule.dio);

    // Data Sources
    gh.lazySingleton<_i101.AuthenticationLocalDataSource>(
        () => _i101.AuthenticationLocalDataSourceImpl());
    gh.lazySingleton<_i198.AuthenticationRemoteDataSource>(
        () => _i198.AuthenticationRemoteDataSourceImpl(gh<_i361.Dio>()));

    // Repositories
    gh.lazySingleton<_i914.AuthenticationRepository>(() =>
        _i314.AuthenticationRepositoryImpl(
          remoteDataSource: gh<_i198.AuthenticationRemoteDataSource>(),
          localDataSource: gh<_i101.AuthenticationLocalDataSource>(),
        ));

    // Use Cases
    gh.factory<_i98.SignIn>(
        () => _i98.SignIn(gh<_i914.AuthenticationRepository>()));
    gh.factory<_i99.CheckAuthStatus>(
        () => _i99.CheckAuthStatus(gh<_i914.AuthenticationRepository>()));
    gh.factory<_i97.Logout>(
        () => _i97.Logout(gh<_i914.AuthenticationRepository>()));

    // Blocs & Cubits
    gh.singleton<_i793.AuthenticatorWatcherBloc>(
        () => _i793.AuthenticatorWatcherBloc(
              gh<_i99.CheckAuthStatus>(),
              gh<_i97.Logout>(),
            ));
    gh.singleton<_i505.LanguageFormBloc>(() => _i505.LanguageFormBloc());
    gh.singleton<_i297.NetworkBloc>(() => _i297.NetworkBloc());
    gh.singleton<_i291.ThemeCubit>(() => _i291.ThemeCubit());
    gh.singleton<_i627.UpdateTokenCubit>(() => _i627.UpdateTokenCubit());
    gh.singleton<_i154.SignInFormBloc>(
        () => _i154.SignInFormBloc(gh<_i98.SignIn>()));

    return this;
  }
}

class _$NetworkModule extends _i100.NetworkModule {}
