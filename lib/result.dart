import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/Home.dart';
import 'package:quiz_app/data/QuizQuestion.dart';

class Result extends StatelessWidget {
  Result({super.key, required this.selectedUserAnswers});
  static String id = "Result";

  final List<String> selectedUserAnswers;

  getSummary() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < selectedUserAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answers": selectedUserAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    var numOfCorrectAnswers = summaryData
        .where(
            (element) => element["user_answers"] == element["correct_answer"])
        .length;

    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurpleAccent, Colors.purpleAccent])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                  "You got $numOfCorrectAnswers answes right from ${questions.length}",
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
            Center(
              child: SizedBox(
                height: 500,
                child: SingleChildScrollView(
                  child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          const SizedBox(
                            height: 20,
                          ),
                          // const Text("Result screen!",textAlign: TextAlign.center,),
                          const SizedBox(
                            height: 20,
                          ),
                      
                          ...getSummary().map((e) => Column(
                                children: [
                                   Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: CircleAvatar(
                                                radius: 14,
                                                backgroundColor:
                                                    e["user_answers"] == e["correct_answer"]
                                                        ? Colors.blue
                                                        : Colors.red[300],
                                                child: Text(((e["question_index"] as int) + 1)
                                                    .toString())),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  e["question"].toString(),
                                                  style: const TextStyle(
                                                      color: Color.fromARGB(255, 250, 205, 254),
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  e["correct_answer"].toString(),
                                                  style: const TextStyle(
                                                      color: Color.fromARGB(255, 49, 167, 203)),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  e["user_answers"].toString(),
                                                  style: const TextStyle(
                                                      color: Color.fromARGB(146, 250, 205, 254)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                  
                                  const SizedBox(
                                    height: 15,
                                  ),
                                ],
                              )),
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple[900],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, HomePage.id);
                              },
                              icon: const Icon(
                                Icons.restart_alt_outlined,
                                color: Color.fromARGB(255, 250, 205, 254),
                              ),
                              label: const Text(
                                "Restart quiz!",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 250, 205, 254),
                                ),
                              ))
                        ],
                      ),
                ),
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
