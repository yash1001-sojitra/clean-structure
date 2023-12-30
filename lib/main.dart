// ignore_for_file: depend_on_referenced_packages

import 'package:clean_architecture/src/Exports/bloc_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:clean_architecture/injection.dart' as di;
import 'package:clean_architecture/l10n/l10n.dart';
import 'package:clean_architecture/src/Utilities/shared_pref_helper.dart';
import 'package:clean_architecture/src/comman/themes.dart';
import 'package:clean_architecture/src/presentation/bloc/language/language_form/language_form_bloc.dart';
import 'package:clean_architecture/src/presentation/cubit/theme/theme_cubit.dart';
import 'package:clean_architecture/src/routes/go_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefHelper().init();
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocList,
      child: BlocBuilder<LanguageFormBloc, LanguageFormState>(
        builder: (context, state) {
          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, themeCubit) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                title: 'Urja Mobility',
                theme: themeLight(context),
                darkTheme: themeDark(context),
                locale: state.selectedLocale,
                supportedLocales: L10n.all,
                themeMode: (themeCubit is ThemeLight)
                    ? ThemeMode.light
                    : ThemeMode.dark,
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                routerConfig: routerinit,
              );
            },
          );
        },
      ),
    );
  }
}
