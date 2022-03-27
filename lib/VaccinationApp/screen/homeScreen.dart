import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/FriendlyChatApp/ChatScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        primary: Colors.green,
        onSurface: Colors.white);

    final ButtonStyle elevatedButtonStyle = ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        foregroundColor: MaterialStateProperty.all(Colors.grey),
        textStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 20, fontWeight: FontWeight.bold)));

    return Container(
      color: Theme.of(context).accentColor,
      // decoration: const BoxDecoration(
      //     image: DecorationImage(
      //         colorFilter: ColorFilter.mode(Colors.pink, BlendMode.softLight),
      //         image: AssetImage('assets/images/cake_small.jpg'),
      //         fit: BoxFit.cover)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text('VACCINATIFY',
                  style: Theme.of(context).textTheme.headline2),
            )),
            Container(
              width: 400,
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('GO & GET VACCINE!',
                      style: Theme.of(context).textTheme.bodyText1),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('EASY WAY TO FIND VACCINATION',
                        style: Theme.of(context).textTheme.bodyText2),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return const ChatScreen();
                              }),
                            );
                          },
                          child: const Text('Register'),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(2.0)),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return const ChatScreen();
                              }),
                            );
                          },
                          child: Text('Sign In'),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
