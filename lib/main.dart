import 'package:basic_quiz_app/widgets/quiz.dart';
import 'package:flutter/material.dart';

import 'widgets/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void customFunction() {
    debugPrint("Hi, i am  a custom function");
  }

  var _questionIndex = 0;
  int _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Orange', 'score': 30},
        {'text': 'Red', 'score': 40}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Lion', 'score': 20},
        {'text': 'Tiger', 'score': 30},
        {'text': 'Snake', 'score': 40}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Lion', 'score': 2},
        {'text': 'Tiger', 'score': 3},
        {'text': 'Snake', 'score': 4}
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += _totalScore;
    setState(() {
      _questionIndex = _questionIndex + 1;
      debugPrint("---------printing$_questionIndex--------");
      if (_questionIndex < _questions.length) {
        debugPrint("We have more questions!");
      } else {
        debugPrint("No more questions!");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Basic Quiz App",
            style: TextStyle(color: Colors.orangeAccent),
          ),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(
                resultScore: _totalScore,
              ));
  }
}
