import 'package:flutter/material.dart';

import 'package:myapp/VaccinationApp/widgets/without_login_layout.dart';

import '../widgets/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool verifyOtp = false;

  @override
  void initState() {
    super.initState();
  }

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
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
