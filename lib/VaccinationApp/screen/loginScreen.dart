import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/VaccinationApp/widgets/withoutLoginLayout.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _mobile = "";
  @override
  Widget build(BuildContext context) {
    return
        // WithOutLoginLayout(
        //   body:
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     Card(
        //       child:
        Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(padding: EdgeInsets.all(15)),
        Text('Hello ', style: Theme.of(context).textTheme.headline4),
        Text('Welcome To Vaccinatify',
            style: Theme.of(context).textTheme.headline5),
        LoginForm(),
        Padding(padding: EdgeInsets.all(15)),
      ],
    );
    //     ),
    //   ],
    // ),
    // );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            // controller: _controller,
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
            // obscureText: true,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: 'Mobile Number'),
          ),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pop(context);
                  // Navigator.pushNamed(context, '/otpverification');
                }
              },
              child: const Text('OTP'))
        ],
      ),
    );
  }
}
