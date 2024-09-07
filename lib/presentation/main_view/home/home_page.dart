import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: () => Navigator.pop(context), child: const Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: const Text("jjj"),
    );
  }
}
