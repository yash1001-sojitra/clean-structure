// ignore_for_file: depend_on_referenced_packages


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:clean_architecture/injection.dart' as di;
import 'bloc_expert.dart';

List<SingleChildWidget> blocList = [
  BlocProvider(create: (_) => di.locator<LanguageFormBloc>()),
  BlocProvider(create: (_) => di.locator<ThemeCubit>()),
  BlocProvider(create: (_) => di.locator<SignInFormBloc>()),
];
