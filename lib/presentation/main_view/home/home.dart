import 'package:flutter/material.dart';
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: Text("jjj"),
    );
  }
}
