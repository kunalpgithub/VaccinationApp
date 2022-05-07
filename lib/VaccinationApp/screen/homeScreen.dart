// import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:myapp/FriendlyChatApp/ChatScreen.dart';
import 'package:myapp/VaccinationApp/screen/loginScreen.dart';
// import 'package:myapp/VaccinationApp/screen/registrationScreen.dart';
// import 'package:myapp/VaccinationApp/widgets/LoginForm.dart';
import 'package:myapp/VaccinationApp/widgets/RegistrationForm.dart';

import '../widgets/WithoutLoginLayout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WithOutLoginLayout(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 37)),
            Image.asset('assets/images/injection_1.png'),
            const Padding(padding: EdgeInsets.only(top: 9)),
            Text('VACCINATIFY', style: Theme.of(context).textTheme.headline1),
            const Padding(padding: EdgeInsets.only(top: 312)),
            Text('GO & GET VACCINE!',
                style: Theme.of(context).textTheme.headline2),
            const Padding(padding: EdgeInsets.only(top: 8)),
            Text('EASY WAY TO FIND VACCINATION',
                style: Theme.of(context).textTheme.headline3),
            const Padding(padding: EdgeInsets.only(top: 8)),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                      // showModalBottomSheet(

                      //     context: context,
                      //     // isScrollControlled: true,
                      //     builder: (context) {
                      //       return const RegistrationForm();
                      //     });
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                      // showModalBottomSheet(
                      //     isDismissible: false,
                      //     context: context,
                      //     builder: (context) {
                      //       return const LoginScreen();
                      //     });
                    },
                    child:
                        const Text('Sign In', style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
