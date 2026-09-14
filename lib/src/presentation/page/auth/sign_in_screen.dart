import 'package:clean_architecture/app/common/constant.dart';
import 'package:clean_architecture/app/common/enum.dart';
import 'package:clean_architecture/app/common/toast.dart';
import 'package:clean_architecture/routes/routes.dart';
import 'package:clean_architecture/src/presentation/bloc/sign_in_form/sign_in_form_bloc.dart';
import 'package:clean_architecture/src/presentation/widget/custom_elevated_button.dart';
import 'package:clean_architecture/src/presentation/widget/custom_text_button.dart';
import 'package:clean_architecture/src/presentation/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN),
            child: BlocConsumer<SignInFormBloc, SignInFormState>(
              listener: (context, state) {
                if (state.state == RequestState.error) {
                  showToast(msg: state.message);
                } else if (state.state == RequestState.loaded) {
                  showToast(msg: 'Signed in successfully!');
                  // Navigate to home or dashboard when available
                }
              },
              builder: (context, state) {
                final isLoading = state.state == RequestState.loading;

                return Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(
                        Icons.lock_outline_rounded,
                        size: 64,
                        color: theme.primaryColor,
                      ),
                      const SizedBox(height: SPACE15),
                      Text(
                        'Welcome Back',
                        style: theme.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: SPACE8),
                      Text(
                        'Sign in to access your account',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.textTheme.bodySmall?.color,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: SPACE25),
                      CustomTextFormField(
                        controller: _emailController,
                        hintText: 'Enter your email',
                        textFieldType: TextFieldType.email,
                        prefixIcon: const Icon(Icons.email_outlined),
                        onChanged: (val) {
                          context
                              .read<SignInFormBloc>()
                              .add(SignInFormEvent.emailOnChanged(val));
                        },
                      ),
                      const SizedBox(height: SPACE15),
                      CustomTextFormField(
                        controller: _passwordController,
                        hintText: 'Enter your password',
                        textFieldType: TextFieldType.password,
                        prefixIcon: const Icon(Icons.lock_outlined),
                        obscureText: true,
                        onChanged: (val) {
                          context
                              .read<SignInFormBloc>()
                              .add(SignInFormEvent.passwordOnChanged(val));
                        },
                      ),
                      const SizedBox(height: SPACE25),
                      CustomElevatedButton(
                        label: 'Sign In',
                        labelLoading: 'Signing In...',
                        isLoading: isLoading,
                        onTap: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            context.read<SignInFormBloc>().add(
                                  const SignInFormEvent.signInWithEmail(),
                                );
                          }
                        },
                      ),
                      const SizedBox(height: SPACE15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: theme.textTheme.bodyMedium,
                          ),
                          CustomTextButton(
                            label: 'Sign Up',
                            onTap: () {
                              context.pushNamed(AppRoutes.SIGNUP_ROUTE_NAME);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
