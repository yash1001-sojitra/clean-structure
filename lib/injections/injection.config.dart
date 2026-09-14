// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:clean_architecture/injections/network_module.dart' as _i772;
import 'package:clean_architecture/src/data/datasource/authentication_local_data_source.dart'
    as _i481;
import 'package:clean_architecture/src/data/datasource/authentication_remote_data_source.dart'
    as _i198;
import 'package:clean_architecture/src/data/repository/authentication_repository_impl.dart'
    as _i314;
import 'package:clean_architecture/src/domain/repositories/authentication_repository.dart'
    as _i968;
import 'package:clean_architecture/src/domain/usecase/check_auth_status.dart'
    as _i345;
import 'package:clean_architecture/src/domain/usecase/login.dart' as _i98;
import 'package:clean_architecture/src/domain/usecase/logout.dart' as _i536;
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
    as _i560;
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
    gh.singleton<_i505.LanguageFormBloc>(() => _i505.LanguageFormBloc());
    gh.singleton<_i297.NetworkBloc>(() => _i297.NetworkBloc());
    gh.singleton<_i291.ThemeCubit>(() => _i291.ThemeCubit());
    gh.singleton<_i560.UpdateTokenCubit>(() => _i560.UpdateTokenCubit());
    gh.lazySingleton<_i361.Dio>(() => networkModule.dio);
    gh.lazySingleton<_i198.AuthenticationRemoteDataSource>(
        () => _i198.AuthenticationRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i481.AuthenticationLocalDataSource>(
        () => _i481.AuthenticationLocalDataSourceImpl());
    gh.lazySingleton<_i968.AuthenticationRepository>(
        () => _i314.AuthenticationRepositoryImpl(
              remoteDataSource: gh<_i198.AuthenticationRemoteDataSource>(),
              localDataSource: gh<_i481.AuthenticationLocalDataSource>(),
            ));
    gh.factory<_i345.CheckAuthStatus>(
        () => _i345.CheckAuthStatus(gh<_i968.AuthenticationRepository>()));
    gh.factory<_i98.SignIn>(
        () => _i98.SignIn(gh<_i968.AuthenticationRepository>()));
    gh.factory<_i536.Logout>(
        () => _i536.Logout(gh<_i968.AuthenticationRepository>()));
    gh.singleton<_i154.SignInFormBloc>(
        () => _i154.SignInFormBloc(gh<_i98.SignIn>()));
    gh.singleton<_i793.AuthenticatorWatcherBloc>(
        () => _i793.AuthenticatorWatcherBloc(
              gh<_i345.CheckAuthStatus>(),
              gh<_i536.Logout>(),
            ));
    return this;
  }
}

class _$NetworkModule extends _i772.NetworkModule {}
