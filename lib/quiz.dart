import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/Home.dart';
import 'package:quiz_app/data/QuizQuestion.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/result.dart';
// import 'package:quiz_app/page2.dart';
import 'package:quiz_app/transparency.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  static String id = "Quiz";

  

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
   List<String> selectedAnswers = [];

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
  if(selectedAnswers.length == questions.length) {
    setState(() {
  {

    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Result(selectedUserAnswers: selectedAnswers.toList())));

  }  
  });
  }
    // selectedAnswers = [];
  }

  

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
                  child:  Questions(chooseAnswer),
          ),
    );
  }
}
