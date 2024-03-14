
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/quiz.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
    static String id = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "images/quiz-logo.png",
            width: 300,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Learn Flutter!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 20,),
          OutlinedButton.icon(onPressed: () {

            Navigator.pushNamed(context, Questions.id);
          }, 
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_back_outlined),
          label: 
          const Text("Start Quiz"),)
        ],
      ),
    );
  }
}
