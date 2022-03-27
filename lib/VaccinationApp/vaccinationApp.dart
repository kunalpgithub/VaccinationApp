import 'package:flutter/material.dart';
import 'package:myapp/VaccinationApp/screen/homeScreen.dart';
import 'package:myapp/VaccinationApp/screen/loginScreen.dart';
import 'package:myapp/VaccinationApp/screen/registrationScreen.dart';

class VaccinationApp extends StatelessWidget {
  const VaccinationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle elevatedBtnStyle = ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        foregroundColor: MaterialStateProperty.all(Colors.pinkAccent));
    final ButtonStyle outlineButtonStyle = ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        foregroundColor: MaterialStateProperty.all(Colors.pinkAccent));
    return MaterialApp(
      title: 'Dog Vaccination App',
      theme: ThemeData(
        //UI
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.pink[600],
        //font
        fontFamily: 'Georgia',

        //text style
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText1: TextStyle(fontSize: 28.0, fontFamily: 'Hind'),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(style: elevatedBtnStyle),
        outlinedButtonTheme: OutlinedButtonThemeData(style: outlineButtonStyle),
      ),
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegistrationScreen()
      },
      // home: const HomeScreen()
    );
  }
}
