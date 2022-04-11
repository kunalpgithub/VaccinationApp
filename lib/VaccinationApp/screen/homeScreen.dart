import 'dart:math';
import 'package:flutter/material.dart';
import 'package:myapp/FriendlyChatApp/ChatScreen.dart';
import 'package:myapp/VaccinationApp/screen/loginScreen.dart';
import 'package:myapp/VaccinationApp/screen/registrationScreen.dart';
import 'package:myapp/VaccinationApp/widgets/LoginForm.dart';
import 'package:myapp/VaccinationApp/widgets/RegistrationForm.dart';

import '../widgets/withoutLoginLayout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WithOutLoginLayout(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Image.asset('images/injection_1.png'),
                  Text('VACCINATIFY',
                      style: Theme.of(context).textTheme.headline1),
                ],
              ),
            )),
            Container(
              padding: const EdgeInsets.only(bottom: 100),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('GO & GET VACCINE!',
                        style: Theme.of(context).textTheme.headline2),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('EASY WAY TO FIND VACCINATION',
                          style: Theme.of(context).textTheme.headline3),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return const RegistrationForm();
                                  });
                            },
                            child: const Text('Register'),
                          ),
                        ),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  isDismissible: false,
                                  context: context,
                                  builder: (context) {
                                    return const LoginScreen();
                                  });
                            },
                            child: const Text('Sign In'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ]),
    );
  }
}
