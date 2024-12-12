import 'package:clean_architecture/src/presentation/page/splash/splash_screen.dart';
import 'package:flutter/material.dart';
// Removed unused import

import 'package:go_router/go_router.dart';

part 'app_routes.g.dart';

@TypedGoRoute<SplashRoute>(path: '/')
class SplashRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => SplashScreen();
}
