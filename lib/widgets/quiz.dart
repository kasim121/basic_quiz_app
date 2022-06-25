import 'package:basic_quiz_app/widgets/questions.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  const Quiz({
    Key? key,
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: questions[questionIndex]['questionText'].toString(),
        ),
        const SizedBox(
          height: 20,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            answerText: answer['text'].toString(),
            onPressed: () => answerQuestion(answer['score']),
          );
        }).toList()
      ],
    );
  }
}
