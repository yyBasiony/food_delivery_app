import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/authentication/forget_password.dart';
import 'package:food_delivery/presentation/resources/app_theme.dart';
import 'package:food_delivery/presentation/resources/constants.dart';
import 'package:food_delivery/presentation/widgets/custom_icon_bottom_back.dart';
import 'package:food_delivery/presentation/widgets/custom_text_form_filed.dart';
import 'package:food_delivery/presentation/widgets/custom_widget_bottom.dart';
import 'package:food_delivery/presentation/widgets/custom_widget_divider.dart';
import 'package:food_delivery/presentation/widgets/custon_widget_images.dart';
class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomIconBottomback(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const  SizedBox(height: 0),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const Text(
                  'Sign Up',
                  style: AppTheme.singsingupstyle,
                ),
                const SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        controller: _usernameController,
                        hintText: 'Enter Username',
                        hintStyle:const  TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      const SizedBox(height: 16),
                      CustomTextFormField(
                        controller: _passwordController,
                        //labelText: 'Password',
                        hintText: 'Enter Password',
                        hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
                        obscureText: true,
                      ),
                      const SizedBox(height: 16),
                      CustomTextFormField(
                        controller: _passwordController,
                        hintText: 're-enter Password',
                        hintStyle:const  TextStyle(fontSize: 14, color: Colors.black),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const ForgetPassword();
                          }));
                        },
                        child:const  Align(
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

          const SizedBox(height: 5),
          const CustomWidgetDivider(),
          //const SizedBox(height: 16),
          const CustomWidgetImages()
        ],
      ),
    );
  }
}

