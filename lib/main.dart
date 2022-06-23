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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  void customFunction() {
    debugPrint("Hi, i am  a custom function");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            debugPrint("Hi, I a anonymous function");
          },
          child: const Text("Answere 1"),
        ),
        ElevatedButton(
          onPressed: () => debugPrint(
              "Hi, i am also anonymous function with fat arrow syntax"),
          child: const Text("Answere 1"),
        ),
        ElevatedButton(
          onPressed: customFunction,
          child: const Text("Answere 1"),
        ),
      ],
    );
  }
}
