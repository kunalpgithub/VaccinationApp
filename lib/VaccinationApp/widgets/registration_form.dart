// import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:myapp/VaccinationApp/services/auth_service.dart';

import '../model/user_registration.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final primaryColor = const Color(0xFFFF9A9E);
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _cityController = TextEditingController();

  void handleRegister() async {
    final response = await AuthService().postUser(UserRegistration(
        userId: 0,
        fullName: _nameController.text,
        emailAddress: _emailController.text,
        mobileNumber: _mobileController.text,
        city: _cityController.text));
    if (response.userId > 0) Navigator.pushNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Card(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(35, 35, 35, 5),
            child: Form(
                key: _formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("REGISTER",
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Create Your New Account",
                            style: Theme.of(context).textTheme.bodyText2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: AppTextFormField(_nameController,
                            labelText: 'Full Name', iconData: Icons.person),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: AppTextFormField(
                          _emailController,
                          labelText: 'Email Address',
                          iconData: Icons.email,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: AppTextFormField(_mobileController,
                            labelText: 'Mobile Number', iconData: Icons.phone),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: AppTextFormField(
                          _cityController,
                          labelText: 'City/Town',
                          iconData: Icons.location_city,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                  onPressed: handleRegister,
                                  child: const Text('Register')),
                            )
                          ],
                        ),
                      ),
                      RichText(
                          text: TextSpan(
                              text: "By Signing up you've agree to ",
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 15),
                              children: <TextSpan>[
                            TextSpan(
                                text: 'Our Terms of Use And Privacy Notice',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 15))
                          ])),
                    ])),
          ),
        ),
        Positioned(
            left: 320,
            top: 45,
            child: Image.asset('assets/images/icons8-injection-64_1.png')),
      ],
    );
  }
}

class AppTextFormField extends StatelessWidget {
  final String labelText;
  final IconData? iconData;
  final TextEditingController textController;
  const AppTextFormField(this.textController,
      {Key? key, required this.labelText, this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 5.0,
        shadowColor: Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        child: TextFormField(
          controller: textController,
          obscureText: false,
          decoration:
              InputDecoration(labelText: labelText, prefixIcon: Icon(iconData)),
        ));
  }
}
