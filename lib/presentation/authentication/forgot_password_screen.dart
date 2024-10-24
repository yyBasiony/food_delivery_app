import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../resources/theme/app_theme.dart';
import '../main_view/widgets/custom_app_bar.dart';
import 'cubit/cubit_auth.dart';

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
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  void _resetPassword(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      final email = _emailController.text;
      BlocProvider.of<AuthCubit>(context).resetPassword(email);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Reset link sent!')));
        } else if (state is AuthFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: LayoutBuilder(
          builder: (_, constraints) {
            return Padding(
              padding: EdgeInsets.symmetric(
                vertical: constraints.maxHeight * 0.1,
                horizontal: constraints.maxWidth * 0.1,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Forgot\nPassword',
                        textAlign: TextAlign.center,
                        style: context.textTheme.titleLarge),
                    const Spacer(),
                    TextFormField(
                      validator: _validateEmail,
                      controller: _emailController,
                      decoration:
                          const InputDecoration(hintText: 'Enter email'),
                    ),
                    const Spacer(),
                    ElevatedButton(
                        child: const Text('Reset password'),
                        onPressed: () => _resetPassword(context)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
