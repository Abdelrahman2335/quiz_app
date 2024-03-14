import 'package:flutter/material.dart';
import 'package:quiz_app/Home.dart';
import 'package:quiz_app/questions.dart';
// import 'package:quiz_app/page2.dart';
import 'package:quiz_app/transparency.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  static String id = "Quiz";

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.deepPurpleAccent,
                     Colors.purpleAccent
                     ]
                  )
                  ),
                  child: const HomePage(),
          ),
    );
  }
}
