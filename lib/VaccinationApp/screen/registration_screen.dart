import 'package:flutter/material.dart';
import 'package:myapp/VaccinationApp/widgets/registration_form.dart';
import 'package:myapp/VaccinationApp/widgets/without_login_layout.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WithOutLoginLayout(
      backgroundImage: 'assets/images/pexels-blue-bird-7210698_2.png',
      body: Container(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              RegistrationForm(),
            ],
          ),
        ),
      ),
    );
  }
}
