// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/routes.dart';
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
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _rePasswordController = TextEditingController();

  @override
  void dispose() => {_usernameController.dispose(), _passwordController.dispose(), _rePasswordController.dispose(), super.dispose()};

  String? _validateUsername(String? value) {
    if (value == null || value.isEmpty) return 'Please enter username';

    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Please enter password';
    else if (value.length < 6) return 'Password must be at least 6 characters long';

    return null;
  }

  String? _validateRePassword(String? value) {
    if (value != _passwordController.text) 'Passwords do not match';

    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) Navigator.pushNamed(context, Routes.locationScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Text('Register', style: Theme.of(context).textTheme.titleLarge),
                    const Spacer(flex: 2),
                    TextFormField(
                      validator: _validateUsername,
                      controller: _usernameController,
                      decoration: const InputDecoration(hintText: 'Enter Username', prefixIcon: Icon(Icons.person_outline)),
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
                    ElevatedButton(onPressed: _submitForm, child: const Text('Register')),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () => Navigator.pushNamed(context, Routes.forgotPasswordScreen),
                        child: Text('Forgot Password?', style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.divider)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const DividerWithImage()
        ],
      ),
    );
  }
}
