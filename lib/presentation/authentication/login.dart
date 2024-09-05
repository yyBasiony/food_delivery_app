import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_theme.dart';
import 'package:food_delivery/presentation/resources/constants.dart';
import 'package:food_delivery/presentation/resources/routes.dart';
import 'package:food_delivery/presentation/widgets/custom_icon_bottom_back.dart';
import 'package:food_delivery/presentation/widgets/custom_text_form_filed.dart';
import 'package:food_delivery/presentation/widgets/custom_widget_bottom.dart';
import 'package:food_delivery/presentation/widgets/custom_widget_divider.dart';
import 'package:food_delivery/presentation/widgets/custon_widget_images.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomIconBottomback(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 70),
           const Text(
              'Sign In',
              style: AppTheme.singsingupstyle,
            ),
            const SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        CustomTextFormField(
                          controller: _usernameController,
                          hintText: 'Username',
                          hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        const SizedBox(height: 16),
                        CustomTextFormField(
                          controller: _passwordController,
                          hintText: 'Password',
                          hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
                          obscureText: true,
                        ),
                        const SizedBox(height: 20),
                        customButton(
                          text: 'Sign In',
                          backgroundColor: AppColor.backgronboarding,
                          textColor: Colors.white,
                          borderColor: Colors.orange,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Perform login action
                            }
                          },
                        ),
                        const SizedBox(height: 10),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.forgetPasswordRoute);
                          },
                          child: const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(fontSize: 14, color: Color(0xff34495E)),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const CustomWidgetDivider(),
            const CustomWidgetImages()
          ],
        ),
      ),
    );
  }
}
