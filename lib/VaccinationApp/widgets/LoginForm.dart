import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/VaccinationApp/widgets/OtpInput.dart';
import 'package:myapp/VaccinationApp/widgets/RegistrationForm.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  bool isOtpSent = false;
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Card(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 48, 58, 5),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // const Padding(padding: EdgeInsets.all(15)),
                Text('Hello ', style: Theme.of(context).textTheme.bodyText1),
                const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                Text('Welcome To Vaccinatify',
                    style: Theme.of(context).textTheme.bodyText2),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                if (!isOtpSent) ...[
                  AppTextFormField(
                    // controller: _mobileController,
                    // keyboardType: TextInputType.number,
                    // maxLength: 10,
                    // inputFormatters: <TextInputFormatter>[
                    //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    // ],
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return "Please enter mobile number.";
                    //   }
                    //   return null;
                    // },
                    // decoration: const InputDecoration(
                    //     border: OutlineInputBorder(), labelText: 'Mobile Number'),
                    labelText: 'Mobile Number',
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 13)),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  isOtpSent = true;
                                });
                              }
                            },
                            child: const Text('OTP')),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      "Don't have an Account?",
                      style: Theme.of(context).textTheme.caption,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Text('Sign Up',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor)))
                  ])
                ],
                if (isOtpSent) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                              text: "We have sent verification code to " +
                                  _mobileController.text,
                              style: Theme.of(context).textTheme.caption,
                              children: <TextSpan>[
                                TextSpan(
                                    text: " Change mobile number",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        setState(() {
                                          isOtpSent = false;
                                        });
                                      },
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor)),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OtpInput(_fieldOne, true),
                      OtpInput(_fieldTwo, true),
                      OtpInput(_fieldThree, true),
                      OtpInput(_fieldFour, true),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              // Navigator.pop(context);
                              Navigator.pushNamed(context, '/dashboard');
                            },
                            child: const Text('Confirm OTP')),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Didn't receive code?",
                        style: Theme.of(context).textTheme.caption,
                      ),
                      TextButton(
                          onPressed: () {}, child: const Text("Request Again")),
                    ],
                  ),
                ]
              ],
            ),
          ),
        ),
      ),
      Positioned(
          left: 320,
          top: 25,
          child: Image.asset('assets/images/icons8-injection-64_1.png')),
    ]);
  }
}
