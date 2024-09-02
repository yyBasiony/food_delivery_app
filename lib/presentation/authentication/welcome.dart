import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/authentication/login.dart';
import 'package:food_delivery/presentation/authentication/singup.dart';
import 'package:food_delivery/presentation/resources/assets.dart';
import 'package:food_delivery/presentation/resources/constants.dart';
import 'package:food_delivery/presentation/widgets/custom_widget_bottom.dart';
import 'package:food_delivery/presentation/widgets/custom_widget_divider.dart';
import 'package:food_delivery/presentation/widgets/custon_widget_images.dart';
class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bachgrowelcom,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const  SizedBox(height: 100),
          Center(
            child: Container(
              height: 220,
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(AssetData.burger),
              ),
            ),
          ),
         const  SizedBox(height: 20),
          customButton(
            text: 'Sign In',
            backgroundColor: AppColor.backgronboarding,
            textColor: Colors.white,
            borderColor: Colors.orange,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),
          const SizedBox(height: 20),
          customButton(
            text: 'Sign Up',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderColor: AppColor.inactiveColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
          ),
          const SizedBox(
            height: 28
          ),
          const CustomWidgetDivider(),

          const CustomWidgetImages()
        ],
      ),
    );
  }
}

