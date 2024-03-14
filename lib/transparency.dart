// Here we learn how to make Trancsparency one way we can wrap the image with Opacity or we can just give it color and use the opacity in the color function/
   
 


import 'dart:developer';

import 'package:flutter/material.dart';

class Transparency extends StatelessWidget {
  const Transparency({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "images/quiz-logo.png",
            width: 300,color: Colors.white.withOpacity(0.8), /// this is how we can make Transprency.
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
            log("Pressed");
          }, 
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white.withOpacity(0.8)),
          icon:  const Icon(Icons.arrow_back_outlined),
          label: 
          const Text("Start Quiz"),)
        ],
      ),
    );
  }
}
