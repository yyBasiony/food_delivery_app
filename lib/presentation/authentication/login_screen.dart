import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../resources/routes.dart';
import 'widget/divider_with_image.dart';
import 'widget/custom_icon_bottom_back.dart';

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
  void dispose() => {_usernameController.dispose(), _passwordController.dispose(), super.dispose()};

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

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(context, Routes.locationScreen);
    }
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
                    Text('Login', style: Theme.of(context).textTheme.titleLarge),
                    const Spacer(flex: 2),
                    TextFormField(
                      validator: _validateUsername,
                      controller: _usernameController,
                      decoration: const InputDecoration(hintText: 'Username', prefixIcon: Icon(Icons.person_outline)),
                    ),
                    const Spacer(),
                    TextFormField(
                      obscureText: true,
                      validator: _validatePassword,
                      controller: _passwordController,
                      decoration: const InputDecoration(hintText: 'Password', prefixIcon: Icon(Icons.lock_outline)),
                    ),
                    const Spacer(),
                    ElevatedButton(onPressed: _submitForm, child: const Text('Login')),
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
