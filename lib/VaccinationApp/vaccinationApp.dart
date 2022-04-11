import 'package:flutter/material.dart';
import 'package:myapp/VaccinationApp/screen/dashboardScreen.dart';
import 'package:myapp/VaccinationApp/screen/homeScreen.dart';
import 'package:myapp/VaccinationApp/screen/loginScreen.dart';
import 'package:myapp/VaccinationApp/screen/otpVerificationScreen.dart';
import 'package:myapp/VaccinationApp/screen/registrationScreen.dart';

class VaccinationApp extends StatelessWidget {
  const VaccinationApp({Key? key}) : super(key: key);
  final secondaryColor = const Color(0xFFFFFFFF);
  final primarySecondColor = const Color(0xFFFCE3E7);
  final primaryColor = const Color(0xFFFF9A9E);
  final primaryTextColor = const Color(0xFF646464);
  final primarySecondTextColor = const Color(0xFFFF9A9E);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle primaryButton = ButtonStyle(
      textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
      backgroundColor: MaterialStateProperty.all(secondaryColor),
      foregroundColor: MaterialStateProperty.all(primaryTextColor),
      padding: MaterialStateProperty.all(const EdgeInsets.all(30)),
      // maximumSize: MaterialStateProperty.all(const Size(170, 85))
      // minimumSize: MaterialStateProperty.all(
      //     const Size(double.infinity, double.infinity))
    );
    final ButtonStyle secondaryButton = ButtonStyle(
      textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
      backgroundColor: MaterialStateProperty.all(primarySecondColor),
      foregroundColor: MaterialStateProperty.all(primaryTextColor),
      padding: MaterialStateProperty.all(const EdgeInsets.all(30)),
      // minimumSize: MaterialStateProperty.all(
      //     const Size(double.infinity, double.infinity))
    );
    return MaterialApp(
      title: 'Dog Vaccination App',
      theme: ThemeData(
        primaryColor: Colors.pink[300],

        // primaryColorLight: Colors.pink[50],
        // primaryColorDark: Colors.pink[600],
        // cardTheme: const CardTheme(
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.vertical(
        //             top: Radius.circular(25), bottom: Radius.circular(0)))),

        //UI
        // brightness: Brightness.dark,
        // primaryColor: Colors.lightBlue[800],
        // accentColor: Colors.pink[600],
        //font
        // fontFamily: 'Georgia',
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.pink[50]),

        //text style
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              wordSpacing: 0.01,
              letterSpacing: 1.1,
              color: Colors.white),
          headline2: TextStyle(
              fontSize: 34.0,
              wordSpacing: 3,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          headline3: TextStyle(
              fontSize: 18.0,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          headline6: TextStyle(
              fontSize: 36.0, fontStyle: FontStyle.italic, color: Colors.white),
          bodyText1: TextStyle(
              fontSize: 28.0, fontFamily: 'Hind', color: Colors.white),
          bodyText2: TextStyle(
              fontSize: 14.0, fontFamily: 'Hind', color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(style: primaryButton),
        outlinedButtonTheme: OutlinedButtonThemeData(style: secondaryButton),
        // colorScheme: ColorScheme.fromSwatch().copyWith(
        //     primary: Colors.pink[100],
        //     onPrimary: Colors.white,
        //     primaryContainer: Colors.amber,
        //     onPrimaryContainer: Colors.amber[50],
        //     secondary: Colors.yellow,
        //     onSecondary: Colors.white,
        //     secondaryContainer: Colors.black87,
        //     onSecondaryContainer: Colors.black,

        //     background: Colors.orange,
        //     brightness: Brightness.light),
      ),
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegistrationScreen(),
        '/otpverification': (context) => const OtpVerificationScreen(),
        '/dashboard': (context) => const DashboardScreen()
      },
      // home: const HomeScreen()
    );
  }
}
