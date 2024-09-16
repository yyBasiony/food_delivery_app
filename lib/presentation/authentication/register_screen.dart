import 'package:flutter/material.dart';

import '../resources/routes.dart';
import 'widget/custom_icon_bottom_back.dart';
import 'widget/divider_with_image.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _rePasswordController = TextEditingController();

  @override
  void dispose() => {_usernameController.dispose(), _passwordController.dispose(), _rePasswordController.dispose(), super.dispose()};

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
                  Text('Register', style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 40),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(hintText: 'Enter Username', prefixIcon: Icon(Icons.person_outline)),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: const InputDecoration(hintText: 'Enter Password', prefixIcon: Icon(Icons.lock_outline)),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    obscureText: true,
                    controller: _rePasswordController,
                    decoration: const InputDecoration(hintText: 'Re-enter Password', prefixIcon: Icon(Icons.lock_outline)),
                  ),
                  const SizedBox(height: 30),
                  // ToDo: Validation
                  ElevatedButton(child: const Text('Register'), onPressed: () => Navigator.pushNamed(context, Routes.locationScreen)),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child:
                        TextButton(child: const Text('Forgot Password?'), onPressed: () => Navigator.pushNamed(context, Routes.forgotPasswordScreen)),
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
