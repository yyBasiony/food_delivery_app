import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../resources/app_colors.dart';
import '../resources/routes.dart';
import 'cubit/cubit_auth.dart';
import 'widget/custom_icon_bottom_back.dart';
import 'widget/divider_with_image.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isPasswordVisible = false;
  bool _isRePasswordVisible = false;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController(); // تغيير الاسم هنا
  final _passwordController = TextEditingController();
  final _rePasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
    super.dispose();
  }

  String? _validateEmail(String? value) {
    final RegExp emailRegExp = RegExp(
        r'^[a-zA-Z0-9]+@[a-zA-Z]+\.[a-zA-Z]+'); // تحقق من صحة البريد الإلكتروني
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
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
      BlocProvider.of<AuthCubit>(context).register(
        _emailController.text, // استبدل _usernameController بـ _emailController
        _passwordController.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          // Navigate to the mainView (home) after successful registration
          Navigator.pushReplacementNamed(context, Routes.mainView);
        } else if (state is AuthFailure) {
          // Show error message if registration fails
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(leading: const CustomIconButtonBack()),
        body: Column(
          children: [
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(flex: 8),
                      Text('Register',
                          style: Theme.of(context).textTheme.titleLarge),
                      const Spacer(flex: 2),
                      TextFormField(
                        validator: _validateEmail, // استخدام _validateEmail هنا
                        controller:
                            _emailController, // استخدام _emailController
                        decoration: const InputDecoration(
                          hintText: 'Enter Email',
                          prefixIcon: Icon(Icons.email),
                        ),
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
                            icon: Icon(_isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () => setState(
                                () => _isPasswordVisible = !_isPasswordVisible),
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
                            icon: Icon(_isRePasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () => setState(() =>
                                _isRePasswordVisible = !_isRePasswordVisible),
                          ),
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () => _submitForm(context),
                        child: const Text('Register'),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () => Navigator.pushNamed(
                              context, Routes.forgotPasswordScreen),
                          child: Text(
                            'Forgot Password?',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(color: AppColors.divider),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const DividerWithImage(),
          ],
        ),
      ),
    );
  }
}
