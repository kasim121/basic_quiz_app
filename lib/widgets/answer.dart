import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPressed;
  final String answerText;
  const Answer({
    Key? key,
    required this.onPressed,
    required this.answerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            answerText,
            style: const TextStyle(color: Colors.white),
          ),
        ));
  }
}
