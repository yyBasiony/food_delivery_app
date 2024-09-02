import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/resources/app_theme.dart';
import 'package:food_delivery/presentation/resources/constants.dart';
class CustomWidgetDivider extends StatelessWidget {
  const CustomWidgetDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding:  EdgeInsets.all(8.0),
            child: Divider(
              color: AppColor.dividercolor,
              thickness: 1,
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('Or connect with',style: AppTheme.conettext,),
        ),
      ],
    );
  }
}
