import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:myapp/VaccinationApp/widgets/withoutLoginLayout.dart';

import '../widgets/LoginForm.dart';

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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.all(15)),
          Text('Hello ', style: Theme.of(context).textTheme.headline4),
          Text('Welcome To Vaccinatify',
              style: Theme.of(context).textTheme.headline5),
          const Padding(padding: EdgeInsets.all(15)),
          LoginForm(),
          OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'))
          // const Padding(padding: EdgeInsets.all(15)),
        ],
      ),
    );
  }
}
