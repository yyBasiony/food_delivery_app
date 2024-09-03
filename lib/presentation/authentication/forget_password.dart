import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_theme.dart';
import 'package:food_delivery/presentation/resources/constants.dart';
import 'package:food_delivery/presentation/widgets/custom_icon_bottom_back.dart';
import 'package:food_delivery/presentation/widgets/custom_text_form_filed.dart';
import 'package:food_delivery/presentation/widgets/custom_widget_bottom.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}
class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconBottomback(),
      ),
      body: Column(
        children: [
          Text(
            'Forget ',
            style: AppTheme.forgetstyle,
          ),
          Text(
            ' Password',
            style: AppTheme.forgetstyle,
          ),

          SizedBox(height: 20),
          CustomTextFormField(
            controller: _emailController,
            hintText: 'Enter email',
            hintStyle: TextStyle(fontSize: 14, color: Colors.black),
          ),
          SizedBox(height: 20),

          CustomTextFormField(
            controller: _phoneController,
            hintText: 'Enter phone numnber',
            hintStyle: TextStyle(fontSize: 14, color: Colors.black),
          ),

          SizedBox(height: 20),
          customButton(
            text: 'Reset password',
            backgroundColor: AppColor.backgronboarding,
            textColor: Colors.white,
            borderColor: Colors.orange,
            onPressed: () {
            },
          ),


        ],
      ),
    );
  }
}
