// import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/VaccinationApp/providers/registration_form_provider.dart';
import 'package:myapp/VaccinationApp/services/auth_service.dart';
import 'package:provider/provider.dart';

import '../model/user_registration.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  late RegistrationFormProvider _registrationFormProvider;
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
    _registrationFormProvider = Provider.of<RegistrationFormProvider>(context);
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
                        child: AppTextFormField(
                          _nameController,
                          labelText: 'Full Name',
                          iconData: Icons.person,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r"[a-zA-Z]+|\s"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: AppTextFormField(
                          _emailController,
                          labelText: 'Email Address',
                          iconData: Icons.email,
                          onChanged:
                              _registrationFormProvider.validateEmailAddress,
                          errorText:
                              _registrationFormProvider.emailAddress.error,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: AppTextFormField(
                          _mobileController,
                          labelText: 'Mobile Number',
                          iconData: Icons.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter(RegExp(r"[0-9]"),
                                allow: true)
                          ],
                          onChanged: _registrationFormProvider.validateMobile,
                          errorText: _registrationFormProvider.mobile.error,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: AppTextFormField(
                          _cityController,
                          labelText: 'City/Town',
                          iconData: Icons.location_city,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r"[a-zA-Z]+|\s"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Consumer<RegistrationFormProvider>(
                                builder: (context, model, child) {
                                  return ElevatedButton(
                                      onPressed: () {
                                        if (model.validate) {
                                          handleRegister();
                                        }
                                      },
                                      child: const Text('Register'));
                                },
                              ),
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
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final String? errorText;

  const AppTextFormField(this.textController,
      {Key? key,
      required this.labelText,
      this.iconData,
      this.hintText,
      this.errorText,
      this.onChanged,
      this.validator,
      this.inputFormatters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 5.0,
        shadowColor: Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        child: TextFormField(
          onChanged: onChanged,
          validator: validator,
          inputFormatters: inputFormatters,
          controller: textController,
          obscureText: false,
          decoration: InputDecoration(
              labelText: labelText,
              prefixIcon: Icon(iconData),
              hintText: hintText,
              errorText: errorText),
        ));
  }
}
