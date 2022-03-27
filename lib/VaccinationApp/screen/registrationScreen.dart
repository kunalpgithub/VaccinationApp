import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Registration Screen'),
        OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go Back'))
      ],
    );
  }
}
