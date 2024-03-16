import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answerText, required this.onPressed});

  final String answerText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple[900],
        // padding: EdgeInsets.all(0.5), /// to make some space between what in side the button this is one way another way is to do as follow ----->
        // padding: const EdgeInsets.fromLTRB(60, 30, 60, 30), /// also we can you symmetric. 
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40)
      ),
      onPressed: onPressed, child: Text(answerText, textAlign: TextAlign.center,));
  }
}
