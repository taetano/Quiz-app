import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final void Function(String answer) onChooseAnswer;

  const AnswerButton(this.answerText,
      {super.key, required this.onChooseAnswer});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onChooseAnswer(answerText);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(248, 128, 7, 7),
        foregroundColor: Colors.white,
      ),
      child: Text(answerText),
    );
  }
}
