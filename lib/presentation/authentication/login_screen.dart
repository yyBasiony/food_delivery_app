import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_theme.dart';

import '../resources/routes.dart';
import 'widget/custom_icon_bottom_back.dart';
import 'widget/custom_divider.dart';
import 'widget/custom_images.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const CustomIconButtonBack()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login',
                      style: AppTheme.getLightTheme().textTheme.headlineMedium),
                  const SizedBox(height: 40),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                        hintText: 'Username',
                        prefixIcon: Icon(Icons.person_outline)),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock_outline)),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () => Navigator.pushNamed(
                          context, Routes.forgotPasswordScreen),
                      child: const Text('Forgot Password?',
                          style: TextStyle(
                              fontSize: 14, color: Color(0xff34495E))),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          const CustomDivider(),
          const CustomImages()
        ],
      ),
    );
  }
}
