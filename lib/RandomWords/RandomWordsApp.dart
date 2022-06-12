// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'RandomWords.dart';

class RandomWordsApp extends StatelessWidget {
  const RandomWordsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'MA Startup Name Generator', home: RandomWords());
  }
}
