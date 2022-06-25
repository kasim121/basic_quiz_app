import 'package:flutter/material.dart';

import 'package:basic_quiz_app/widgets/questions.dart';

import 'widgets/answer_text_widget.dart';

void main() => runApp(const MyApp());
//demo merging

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

//stateful-widget-private-properties
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
  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      debugPrint("---------printing$_questionIndex--------");
      if (_questionIndex < questions.length) {
        debugPrint("We have more questions!");
      } else {
        debugPrint("No more questions!");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // var questions = [
    //   {
    //     'questionText': 'What\'s your favorite color?',
    //     'answers': ['Black', 'Red', 'Green', 'White'],
    //   },
    //   {
    //     'questionText': 'What\'s your favorite animal?',
    //     'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    //   },
    //   {
    //     'questionText': 'Who\'s your favorite instructor?',
    //     'answers': ['Max', 'Max', 'Max', 'Max'],
    //   },
    // ];
    // var questions = [
    //   'What\'s your favorite color?',
    //   'What\'s your favorite animal?',
    //   'What\'s your favorite color?',
    //   'What\'s your favorite animal?',
    //   'What\'s your favorite color?',
    //   'What\'s your favorite animal?',
    //   'What\'s your favorite color?',
    //   'What\'s your favorite animal?',
    //   'What\'s your favorite color?',
    //   'What\'s your favorite animal?',
    //   'What\'s your favorite color?',
    //   'What\'s your favorite animal?',
    //   'What\'s your favorite color?',
    //   'What\'s your favorite animal?',
    //   'What\'s your favorite color?',
    //   'What\'s your favorite animal?',
    // ];

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Basic Quiz App",
            style: TextStyle(color: Colors.orangeAccent),
          ),
          centerTitle: true,
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  CustomText(
                    text: questions[_questionIndex]['questionText'].toString(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ...(questions[_questionIndex]['answers'] as List)
                      .map((answer) {
                    return Answer(
                      answerText: answer,
                      selectHandler: _answerQuestion,
                    );
                  }).toList()
                ],
              )
            : const Center(
                child: Text("You did it.."),
              ));
  }
}
