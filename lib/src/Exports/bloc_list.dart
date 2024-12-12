// ignore_for_file: depend_on_referenced_packages

import 'package:clean_architecture/injections/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

import 'bloc_expert.dart';

List<SingleChildWidget> blocList = [
  BlocProvider(create: (_) => locator<LanguageFormBloc>()),
  BlocProvider(create: (_) => locator<ThemeCubit>()),
  BlocProvider(create: (_) => locator<SignInFormBloc>()),
];
