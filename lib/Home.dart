import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/quiz.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurpleAccent, Colors.purpleAccent])),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "images/quiz-logo.png",
              width: 350,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Learn Flutter!",
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, Quiz.id);
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 250, 205, 254),
                backgroundColor: Colors.purple[900],
              ),
              icon: const Icon(
                Icons.arrow_back_outlined,
                color: Color.fromARGB(255, 250, 205, 254),
              ),
              label: const Text("Start Quiz"),
            )
          ],
        ),
      ),
    ));
  }
}
