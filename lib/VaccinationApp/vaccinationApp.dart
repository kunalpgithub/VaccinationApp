import 'package:flutter/material.dart';
import 'package:myapp/VaccinationApp/screen/homeScreen.dart';
import 'package:myapp/VaccinationApp/screen/loginScreen.dart';
import 'package:myapp/VaccinationApp/screen/otpVerificationScreen.dart';
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
        // textTheme: const TextTheme(
        //   headline1: TextStyle(
        //       fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.white),
        //   headline2: TextStyle(
        //       fontSize: 54.0, fontWeight: FontWeight.bold, color: Colors.white),
        //   headline6: TextStyle(
        //       fontSize: 36.0, fontStyle: FontStyle.italic, color: Colors.white),
        //   bodyText1: TextStyle(
        //       fontSize: 28.0, fontFamily: 'Hind', color: Colors.white),
        //   bodyText2: TextStyle(
        //       fontSize: 14.0, fontFamily: 'Hind', color: Colors.white),
        // ),
        // elevatedButtonTheme: ElevatedButtonThemeData(style: elevatedBtnStyle),
        // outlinedButtonTheme: OutlinedButtonThemeData(style: outlineButtonStyle),
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
        '/otpverification': (context) => const OtpVerificationScreen()
      },
      // home: const HomeScreen()
    );
  }
}
