import 'package:flutter/material.dart';
class CustomIconBottomback extends StatelessWidget {
  const CustomIconBottomback({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon:const Icon(Icons.arrow_back_ios, size: 20, color: Color(0xff000000)),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
