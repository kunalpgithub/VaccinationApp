// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'ChatScreen.dart';

class FriendlyChatApp extends StatelessWidget {
  const FriendlyChatApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'FriendlyChat', home: ChatScreen());
  }
}
