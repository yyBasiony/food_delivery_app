import 'package:flutter/material.dart';

import '../resources/routes.dart';
import 'widget/divider_with_image.dart';
import 'widget/custom_icon_bottom_back.dart';

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
  void dispose() => {_usernameController.dispose(), _passwordController.dispose(), super.dispose()};

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
                  Text('Login', style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 40),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(hintText: 'Username', prefixIcon: Icon(Icons.person_outline)),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(hintText: 'Password', prefixIcon: Icon(Icons.lock_outline)),
                  ),
                  const SizedBox(height: 30),
                  // ToDO: Validation
                  ElevatedButton(child: const Text('Login'), onPressed: () => Navigator.pushReplacementNamed(context, Routes.locationScreen)),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      child: const Text('Forgot Password?'),
                      onPressed: () => Navigator.pushNamed(context, Routes.forgotPasswordScreen),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          const DividerWithImage()
        ],
      ),
    );
  }
}
