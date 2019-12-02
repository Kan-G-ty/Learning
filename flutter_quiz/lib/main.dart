import 'package:flutter/material.dart';
import 'package:flutter_quiz/question.dart';
import 'package:flutter_quiz/answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'Blue', 'White']
      },
      {
        'questionText': 'What\'s your favortie animal?',
        'answers': ['Rabbit', 'Snake', 'Lion', 'Elephant', 'Dog']
      },
      {
        'questionText': 'What\'s your favortie instructor?',
        'answers': ['Tommy', 'Theo', 'Cindy', 'Sunny']
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My First App')),
            body: Column(
              children: [
                Question(questions[_questionIndex]['questionText']),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )));
  }
}
