// import 'dart:math';
// import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:myapp/FriendlyChatApp/ChatScreen.dart';
// import 'package:myapp/VaccinationApp/screen/loginScreen.dart';
import 'package:myapp/VaccinationApp/services/http_service.dart';
// import 'package:myapp/VaccinationApp/screen/registrationScreen.dart';
// import 'package:myapp/VaccinationApp/widgets/LoginForm.dart';
// import 'package:myapp/VaccinationApp/widgets/RegistrationForm.dart';

import '../widgets/without_login_layout.dart';
// import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  // @protected
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
            ),
            FutureBuilder<Album>(
                future: futureAlbum, //fetchAlbum(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      return Text(snapshot.data!.title);
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    }
                  }
                  return const CircularProgressIndicator();
                })
          ]),
    );
  }
}
