import 'package:flutter/material.dart';

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

// ignore: use_key_in_widget_constructors, must_be_immutable
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void customFunction() {
    debugPrint("Hi, i am  a custom function");
  }

  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
      debugPrint(
          "-----------------------printing$questionIndex-------------------");
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return Column(
      children: [
        Text(
          "Can't update the questions index of the list using stateless widget after pressing button:${questions[questionIndex]}",
          style: const TextStyle(color: Colors.red, fontSize: 14),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            debugPrint("Hi, I a anonymous function");
          },
          child: const Text("Answere 1"),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () => debugPrint(
              "Hi, i am also anonymous function with fat arrow syntax"),
          child: const Text("Answere 2"),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: customFunction,
          child: const Text("Answere 3"),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: answerQuestion,
          child: const Text("Answere 4"),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
