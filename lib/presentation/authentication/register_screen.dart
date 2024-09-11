import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_theme.dart';

import '../resources/routes.dart';
import 'widget/custom_divider.dart';
import 'widget/custom_icon_bottom_back.dart';
import 'widget/custom_images.dart';
import 'forgot_password_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
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
                  Text('Sign up',
                      style: AppTheme.getLightTheme().textTheme.headlineMedium),
                  const SizedBox(height: 40),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                        hintText: 'Enter Username',
                        prefixIcon: Icon(Icons.person_outline)),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: const InputDecoration(
                        hintText: 'Enter Password',
                        prefixIcon: Icon(Icons.lock_outline)),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: const InputDecoration(
                        hintText: 'Re-enter Password',
                        prefixIcon: Icon(Icons.lock_outline)),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    child: const Text('Register'),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.locationScreen);

                      if (_formKey.currentState!.validate()) {}
                    },
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ForgotPasswordScreen())),
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
