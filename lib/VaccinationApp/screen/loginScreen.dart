import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Login Screen'),
        OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go Back'))
      ],
    );
  }
}
