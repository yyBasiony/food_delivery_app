import 'package:flutter/material.dart';

import '../../authentication/widget/custom_app_bar.dart';

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomAppBar(),
        title: const Text('Change Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              obscureText: true,
              // controller: ,
              decoration: const InputDecoration(
                  hintText: 'enter old Password',
                  prefixIcon: Icon(Icons.lock_outline)),
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              //  controller: ,
              decoration: const InputDecoration(
                  hintText: 'enter new Password',
                  prefixIcon: Icon(Icons.lock_outline)),
            ),
            TextFormField(
              obscureText: true,
              //controller: ,
              decoration: const InputDecoration(
                  hintText: 'Re-enter new Password',
                  prefixIcon: Icon(Icons.lock_outline)),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                child: const Text(
                  'save',
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
