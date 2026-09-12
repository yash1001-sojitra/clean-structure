// ignore_for_file: depend_on_referenced_packages

import 'package:clean_architecture/injections/injection.dart';
import 'package:clean_architecture/src/presentation/bloc/network/network_bloc.dart';
import 'package:clean_architecture/src/presentation/cubit/upate_fcm_token/update_token_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

import 'bloc_expert.dart';

List<SingleChildWidget> blocList = [
  BlocProvider(create: (_) => locator<LanguageFormBloc>()),
  BlocProvider(create: (_) => locator<ThemeCubit>()),
  BlocProvider(create: (_) => locator<SignInFormBloc>()),
  BlocProvider(create: (_) => locator<NetworkBloc>()),
  BlocProvider(create: (_) => locator<UpdateTokenCubit>()),
];
