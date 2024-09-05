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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomIconBottomback(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
           const  Text(
              'Forget ',
              style: AppTheme.forgetstyle,
            ),
            const Text(
              ' Password',
              style: AppTheme.forgetstyle,
            ),

            const SizedBox(height: 20),
            CustomTextFormField(
              controller: _emailController,
              hintText: 'Enter email',
              hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
            ),
            const SizedBox(height: 20),


            const SizedBox(height: 20),
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
      ),
    );
  }
}
