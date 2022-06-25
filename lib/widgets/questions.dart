import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        text,
        style: const TextStyle(fontSize: 14),
        textAlign: TextAlign.center,
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class Question extends StatelessWidget {
//   final String questionText;

//   const Question(
//     Key? key,
//     this.questionText,
//   ) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       margin: const EdgeInsets.all(10),
//       child: Text(
//         questionText,
//         style: const TextStyle(fontSize: 28),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
// }
