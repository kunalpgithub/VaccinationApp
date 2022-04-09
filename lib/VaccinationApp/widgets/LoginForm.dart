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
    return Form(
      key: _formKey,
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            if (!isOtpSent) ...[
              TextFormField(
                controller: _mobileController,
                keyboardType: TextInputType.number,
                maxLength: 10,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter mobile number.";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Mobile Number'),
              ),
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
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("Don't have an Account?"),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              children: const [RegistrationForm()],
                            );
                          });
                    },
                    child: const Text('Sign Up'))
              ])
            ],
            if (isOtpSent) ...[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text("We have sent verification code to " +
                    _mobileController.text),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Didn't receive code?"),
                  TextButton(
                      onPressed: () {}, child: const Text("Request Again")),
                ],
              ),
              TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    setState(() {
                      isOtpSent = false;
                    });
                  },
                  child: const Text("Change mobile number")),
            ]
          ],
        ),
      ),
    );
  }
}
