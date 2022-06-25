import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback onPressed;
  const Result({
    Key? key,
    required this.resultScore,
    required this.onPressed,
  }) : super(key: key);

  String get resultPharase {
    String resultText;
    if (resultScore == 10) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore == 20) {
      resultText = "Pretty likeable";
    } else if (resultScore == 3) {
      resultText = "You are strange!";
    } else {
      resultText = "You are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPharase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: onPressed, child: const Text("Restart Quiz"))
        ],
      ),
    );
  }
}
