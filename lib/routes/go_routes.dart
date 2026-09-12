import 'dart:developer';
import 'package:clean_architecture/src/presentation/page/Error/error_screen.dart';
import 'package:clean_architecture/src/presentation/page/auth/sign_in_screen.dart';
import 'package:clean_architecture/src/presentation/page/auth/sign_up_screen.dart';
import 'package:clean_architecture/src/presentation/page/splash/splash_screen.dart';
import 'package:clean_architecture/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter routerinit = GoRouter(
  routes: <RouteBase>[
    ///  =================================================================
    ///  ********************** Splash Route *****************************
    /// ==================================================================
    GoRoute(
      name: AppRoutes.SPLASH_ROUTE_NAME,
      path: AppRoutes.SPLASH_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),

    ///  =================================================================
    ///  ********************** Login Signup Route *****************************
    /// ==================================================================

    GoRoute(
      name: AppRoutes.SIGNIN_ROUTE_NAME,
      path: AppRoutes.SINGIN_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const SignInScreen();
      },
    ),
    GoRoute(
      name: AppRoutes.SIGNUP_ROUTE_NAME,
      path: AppRoutes.SIGNUP_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const SingUpScreen();
      },
    ),
  ],
  errorPageBuilder: (context, state) {
    return const MaterialPage(child: ErrorScreen());
  },
  redirect: (context, state) {
    log('redirect: ${state.uri}');
    return null;
  },
);
