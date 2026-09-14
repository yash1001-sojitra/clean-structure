import 'package:clean_architecture/app/common/constant.dart';
import 'package:clean_architecture/routes/routes.dart';
import 'package:clean_architecture/src/presentation/bloc/authenticator_watcher/authenticator_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.7, curve: Curves.easeIn),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.7, curve: Curves.easeOutBack),
      ),
    );

    _animationController.forward();

    // Trigger auth status check after brief splash duration
    Future.delayed(const Duration(milliseconds: 2000), () {
      if (mounted) {
        context.read<AuthenticatorWatcherBloc>().add(
              const AuthenticatorWatcherEvent.authCheckRequest(),
            );
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return BlocListener<AuthenticatorWatcherBloc, AuthenticatorWatcherState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {
            context.goNamed(AppRoutes.SIGNIN_ROUTE_NAME);
          },
          authenticating: (_) {},
          authenticated: (_) {
            // Can be configured to navigate to Home when ready:
            context.goNamed(AppRoutes.SIGNIN_ROUTE_NAME);
          },
          isFirstTime: (_) {
            context.goNamed(AppRoutes.SIGNIN_ROUTE_NAME);
          },
        );
      },
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: isDark
                  ? [
                      const Color(0xFF1E1E2C),
                      const Color(0xFF121218),
                    ]
                  : [
                      theme.primaryColor.withValues(alpha: 0.08),
                      theme.scaffoldBackgroundColor,
                    ],
            ),
          ),
          child: SafeArea(
            child: Stack(
              children: [
                // Centered App Branding
                Center(
                  child: AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, child) {
                      return FadeTransition(
                        opacity: _fadeAnimation,
                        child: ScaleTransition(
                          scale: _scaleAnimation,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // App Logo Card with subtle glow
                              Container(
                                width: 105,
                                height: 105,
                                decoration: BoxDecoration(
                                  color: theme.primaryColor,
                                  borderRadius: BorderRadius.circular(28),
                                  boxShadow: [
                                    BoxShadow(
                                      color: theme.primaryColor.withValues(alpha: 0.35),
                                      blurRadius: 28,
                                      offset: const Offset(0, 10),
                                    ),
                                  ],
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.layers_rounded,
                                    size: 56,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 28),

                              // App Name
                              Text(
                                APP_NAME,
                                style: theme.textTheme.headlineMedium?.copyWith(
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 0.5,
                                  color: isDark
                                      ? Colors.white
                                      : const Color(0xFF1D2939),
                                ),
                              ),
                              const SizedBox(height: 10),

                              // Subtitle / Architecture Badges
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: theme.primaryColor.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'BLoC • Clean Architecture • Injectable',
                                  style: theme.textTheme.labelMedium?.copyWith(
                                    color: theme.primaryColor,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.3,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // Bottom Loader & Footer
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 32,
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SpinKitThreeBounce(
                          color: theme.primaryColor,
                          size: 20,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'v1.0.0',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.textTheme.bodySmall?.color
                                ?.withValues(alpha: 0.6),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
