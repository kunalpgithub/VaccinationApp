import 'package:flutter/cupertino.dart';
import 'package:myapp/VaccinationApp/widgets/WithoutLoginLayout.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return WithOutLoginLayout(
      body: Text('OTP Verification'),
    );
  }
}
