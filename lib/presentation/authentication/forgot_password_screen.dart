import 'package:flutter/material.dart';
import 'widget/custom_icon_bottom_back.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() => {_emailController.dispose(), super.dispose()};

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Please enter your email';

    return null;
  }

  void _resetPassword() {
    // if (_formKey.currentState!.validate())
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const CustomIconButtonBack()),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text('Forgot\nPassword', textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 40),
              TextFormField(validator: _validateEmail, controller: _emailController, decoration: const InputDecoration(hintText: 'Enter email')),
              const SizedBox(height: 40),
              ElevatedButton(onPressed: _resetPassword, child: const Text('Reset password')),
            ],
          ),
        ),
      ),
    );
  }
}
