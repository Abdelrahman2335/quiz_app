import 'package:flutter/material.dart';
import 'package:quiz_app/models/QuestionPage.dart';

const List<QuestionPage> questions = [
  
  QuestionPage(
    text: 'What is Flutter?',
    answers: [
      'A mobile UI framework',
      'A programming language',
      'A design pattern',
      'A game engine'
    ],
  ),
  QuestionPage(
    text: 'What programming language is used in Flutter?',
    answers: ['Dart', 'Java', 'Swift', "Python"],
  ),
  QuestionPage(
    text: 'What is a Widget in Flutter?',
    answers: [
      'A visual element',
      'A debugging tool',
      'A network request',
      'A database'
    ],
  ),
  QuestionPage(
    text: 'What is the purpose of MaterialApp widget in Flutter?',
    answers: [
      'It defines the top-level Material application',
      'It handles network requests',
      'It defines navigation routes',
      'It provides access to device hardware'
    ],
  ),
  QuestionPage(
    text: 'What is the hot reload feature in Flutter?',
    answers: [
      'It allows you to update your app\'s code instantly',
      'It heats up your device',
      'It optimizes your app\'s performance',
      'It compiles your app faster'
    ],
  ),
];
