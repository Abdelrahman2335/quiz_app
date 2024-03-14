import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:quiz_app/Home.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/quiz.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Quiz.id,
      routes: {
        HomePage.id: (BuildContext context) => const HomePage(),
        Quiz.id: (BuildContext context) => const Quiz(),
        Questions.id: (BuildContext context) => const Questions(),
      },
    );
  }
}
