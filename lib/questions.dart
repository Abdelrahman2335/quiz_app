import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Answer_Button.dart';
import 'package:quiz_app/Home.dart';
import 'package:quiz_app/data/QuizQuestion.dart';

class Questions extends StatefulWidget {
  const Questions(this.onSelectedAnswer, {super.key});
  static String id = "Questions";

  final void Function(String) onSelectedAnswer;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;

  void anweredQuestion(String userAnswer) {
    widget.onSelectedAnswer(userAnswer);
    setState(() {
      
      // log(userAnswer);
      currentQuestionIndex++; // this mean currentQuestionIndex = currentQuestionIndex +1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          currentQuestion.text,
          style: GoogleFonts.lato(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 60,
        ),
        // [[1,2,3],4] => [1,2,3,4]
        ...currentQuestion.shuffledAnswers.map((e) {
          return Container(
              margin: const EdgeInsets.all(20),
              child: AnswerButton(
                answerText: e,
                onPressed: () => anweredQuestion(e),
              ));
        }),
      ],
    );
  }
}
