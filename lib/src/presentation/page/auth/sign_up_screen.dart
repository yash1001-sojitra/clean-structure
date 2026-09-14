import 'package:clean_architecture/app/common/constant.dart';
import 'package:clean_architecture/src/presentation/widget/custom_elevated_button.dart';
import 'package:clean_architecture/src/presentation/widget/custom_text_button.dart';
import 'package:clean_architecture/src/presentation/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Account'),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    Icons.person_add_outlined,
                    size: 64,
                    color: theme.primaryColor,
                  ),
                  const SizedBox(height: SPACE15),
                  Text(
                    'Get Started',
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: SPACE8),
                  Text(
                    'Create your free account today',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.textTheme.bodySmall?.color,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: SPACE25),
                  CustomTextFormField(
                    controller: _nameController,
                    hintText: 'Enter your full name',
                    textFieldType: TextFieldType.alphabet,
                    prefixIcon: const Icon(Icons.person_outline),
                  ),
                  const SizedBox(height: SPACE15),
                  CustomTextFormField(
                    controller: _emailController,
                    hintText: 'Enter your email',
                    textFieldType: TextFieldType.email,
                    prefixIcon: const Icon(Icons.email_outlined),
                  ),
                  const SizedBox(height: SPACE15),
                  CustomTextFormField(
                    controller: _passwordController,
                    hintText: 'Create a password',
                    textFieldType: TextFieldType.password,
                    prefixIcon: const Icon(Icons.lock_outlined),
                    obscureText: true,
                  ),
                  const SizedBox(height: SPACE25),
                  CustomElevatedButton(
                    label: 'Create Account',
                    onTap: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        // Hook into registration usecase / bloc
                      }
                    },
                  ),
                  const SizedBox(height: SPACE15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: theme.textTheme.bodyMedium,
                      ),
                      CustomTextButton(
                        label: 'Sign In',
                        onTap: () {
                          context.pop();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}