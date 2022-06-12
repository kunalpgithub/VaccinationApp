import 'package:flutter/material.dart';
import 'package:myapp/VaccinationApp/screen/dashboard_screen.dart';
import 'package:myapp/VaccinationApp/screen/home_screen.dart';
import 'package:myapp/VaccinationApp/screen/login_screen.dart';
import 'package:myapp/VaccinationApp/screen/otp_verification_screen.dart';
import 'package:myapp/VaccinationApp/screen/registration_screen.dart';

class VaccinationApp extends StatelessWidget {
  const VaccinationApp({Key? key}) : super(key: key);
  final secondaryColor = const Color(0xFFFFFFFF);
  final primarySecondColor = const Color(0xFFFCE3E7);
  final primaryThirdColor = const Color(0xFFFFF6F8);

  final primaryColor = const Color(0xFFFF9A9E);
  final primaryTextColor = const Color(0xFF646464);
  final primarySecondTextColor = const Color(0xFFFF9A9E);

  @override
  Widget build(BuildContext context) {
    // final ButtonStyle secondaryButtonStyle = ButtonStyle(
    //   textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
    //   backgroundColor: MaterialStateProperty.all(secondaryColor),
    //   foregroundColor: MaterialStateProperty.all(primaryTextColor),
    //   padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
    // );
    final ButtonStyle primaryButtonStyle = ButtonStyle(
      textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
      backgroundColor: MaterialStateProperty.all(primaryColor),
      foregroundColor: MaterialStateProperty.all(secondaryColor),
      padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
    );
    final ButtonStyle secondaryButtonWithOpacity = ButtonStyle(
      textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
      backgroundColor:
          MaterialStateProperty.all(primarySecondColor.withOpacity(0.7)),
      foregroundColor: MaterialStateProperty.all(primaryTextColor),
      padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
    );
    return MaterialApp(
      title: 'Dog Vaccination App',
      theme: ThemeData(
          primaryColor: primaryColor,
          cardTheme: CardTheme(
              color: primaryThirdColor,
              margin: const EdgeInsets.all(0),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40), bottom: Radius.circular(0)))),
          inputDecorationTheme: InputDecorationTheme(
              border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              fillColor: Colors.white,
              filled: true,
              labelStyle: TextStyle(color: primaryColor),
              prefixIconColor: primaryColor),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.pink[50]),
          //text style
          textTheme: TextTheme(
              headline1: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 0.01,
                  letterSpacing: 1.1,
                  color: Colors.white),
              headline2: const TextStyle(
                  fontSize: 34.0,
                  wordSpacing: 3,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              headline3: const TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              headline6: const TextStyle(
                  fontSize: 36.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
              bodyText1: TextStyle(fontSize: 24.0, color: primaryColor),
              bodyText2: TextStyle(fontSize: 18.0, color: primaryColor),
              caption: const TextStyle(color: Colors.black, fontSize: 12),
              button: const TextStyle(fontSize: 12)),
          elevatedButtonTheme:
              ElevatedButtonThemeData(style: primaryButtonStyle),
          outlinedButtonTheme:
              OutlinedButtonThemeData(style: secondaryButtonWithOpacity),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(primaryColor))),
          appBarTheme: AppBarTheme(
              elevation: 0,
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(color: primaryColor, size: 30.0))),

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
