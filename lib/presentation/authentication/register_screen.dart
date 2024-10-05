import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../resources/app_colors.dart';
import '../resources/app_theme.dart';
import '../resources/routes.dart';
import '../widgets/custom_app_bar.dart';
import 'cubit/cubit_auth.dart';
import 'widgets/divider_with_image.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isPasswordVisible = false;
  bool _isRePasswordVisible = false;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _rePasswordController = TextEditingController();

  @override
  void dispose() => {_emailController.dispose(), _passwordController.dispose(), _rePasswordController.dispose(), super.dispose()};

  String? _validateEmail(String? value) {
    final RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z]+\.[a-zA-Z]+');
    if (value == null || value.isEmpty) {
      return 'Please enter an email address';
    } else if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  String? _validateRePassword(String? value) {
    if (value != _passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  void _submitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<AuthCubit>(context).register(_emailController.text, _passwordController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushReplacementNamed(context, Routes.mainView);
        } else if (state is AuthFailure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
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
                      padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * .1),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Spacer(flex: 2),
                            Text('Register', style: context.textTheme.titleLarge),
                            const Spacer(flex: 1),
                            TextFormField(
                              validator: _validateEmail,
                              controller: _emailController,
                              decoration: const InputDecoration(hintText: 'Enter Email', prefixIcon: Icon(Icons.email)),
                            ),
                            const Spacer(),
                            TextFormField(
                              validator: _validatePassword,
                              controller: _passwordController,
                              obscureText: !_isPasswordVisible,
                              decoration: InputDecoration(
                                hintText: 'Enter Password',
                                prefixIcon: const Icon(Icons.lock_outline),
                                suffixIcon: IconButton(
                                  icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                                  onPressed: () => setState(() => _isPasswordVisible = !_isPasswordVisible),
                                ),
                              ),
                            ),
                            const Spacer(),
                            TextFormField(
                              validator: _validateRePassword,
                              controller: _rePasswordController,
                              obscureText: !_isRePasswordVisible,
                              decoration: InputDecoration(
                                hintText: 'Re-enter Password',
                                prefixIcon: const Icon(Icons.lock_outline),
                                suffixIcon: IconButton(
                                  icon: Icon(_isRePasswordVisible ? Icons.visibility : Icons.visibility_off),
                                  onPressed: () => setState(() => _isRePasswordVisible = !_isRePasswordVisible),
                                ),
                              ),
                            ),
                            const Spacer(),
                            ElevatedButton(child: const Text('Register'), onPressed: () => _submitForm(context)),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () => Navigator.pushNamed(context, Routes.forgotPasswordScreen),
                                child: Text('Forgot Password?', style: context.textTheme.labelSmall?.copyWith(color: AppColors.divider)),
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
