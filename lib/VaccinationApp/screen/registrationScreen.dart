import 'package:flutter/material.dart';
import 'package:myapp/VaccinationApp/widgets/withoutLoginLayout.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WithOutLoginLayout(
      body: Column(
        children: [
          Text('Registration Screen',
              style: Theme.of(context).textTheme.bodyText1),
          OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'))
        ],
      ),
    );
  }
}
