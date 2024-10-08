import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../resources/app_colors.dart';
import '../resources/app_theme.dart';
import '../resources/routes.dart';
import '../main_view/widgets/custom_app_bar.dart';
import 'cubit/cubit_auth.dart';
import 'widgets/divider_with_image.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() => {
        _usernameController.dispose(),
        _passwordController.dispose(),
        super.dispose()
      };

  String? _validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your username';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  void _submitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      final username = _usernameController.text;
      final password = _passwordController.text;
      BlocProvider.of<AuthCubit>(context).login(username, password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushReplacementNamed(context, Routes.mainView);
        } else if (state is AuthFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: const CustomAppBar(),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (_, constraints) {
              return Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth * 0.1),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Spacer(flex: 2),
                            Text('Login', style: context.textTheme.titleLarge),
                            const Spacer(flex: 1),
                            TextFormField(
                              validator: _validateUsername,
                              controller: _usernameController,
                              decoration: const InputDecoration(
                                  hintText: 'Username',
                                  prefixIcon: Icon(Icons.person_outline)),
                            ),
                            const Spacer(),
                            TextFormField(
                              obscureText: true,
                              validator: _validatePassword,
                              controller: _passwordController,
                              decoration: const InputDecoration(
                                  hintText: 'Password',
                                  prefixIcon: Icon(Icons.lock_outline)),
                            ),
                            const Spacer(),
                            ElevatedButton(
                                child: const Text('Login'),
                                onPressed: () => _submitForm(context)),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () => Navigator.pushNamed(
                                    context, Routes.forgotPasswordScreen),
                                child: Text('Forgot Password?',
                                    style: context.textTheme.labelSmall
                                        ?.copyWith(color: AppColors.divider)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const DividerWithImage(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
