import 'package:flutter/material.dart';
import 'package:quiz_app/Answer_Button.dart';
import 'package:quiz_app/quiz.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});
  static String id = "Questions";

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurpleAccent, Colors.purpleAccent])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Question1..."),
            const SizedBox(
              height: 60,
            ),
            const SizedBox(
              height: 40,
            ),
           AnswerButton("Answer 1...",(){},),
           SizedBox(height: 30,),
           AnswerButton("Answer 2...",(){}),
           SizedBox(height: 30,),
           AnswerButton("Answer 3...",(){}),
          ],
        ),
      ),
    );
  }
}
