import 'package:flutter/material.dart';
import 'package:myapp/VaccinationApp/widgets/RegistrationForm.dart';
import 'package:myapp/VaccinationApp/widgets/withoutLoginLayout.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WithOutLoginLayout(
      backgroundImage: 'assets/images/pexels-blue-bird-7210698_2.png',
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          RegistrationForm(),
        ],
      ),
    );
  }
}
