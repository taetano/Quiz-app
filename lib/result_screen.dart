import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_item.dart';

class ResultScreen extends StatelessWidget {
  final List<String> userAnswers;
  const ResultScreen({super.key, required this.userAnswers});

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summaryData = [];

    for (int i = 0; i < questions.length; i++) {
      summaryData.add({
        "question_no": i + 1,
        "question": questions[i].question,
        "correct_answer": questions[i].answers[0],
        "user_answer": userAnswers[i],
      });
    }

    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    final int totalQuestionCnt = userAnswers.length;
    final summary = summaryData;
    final int correctAnswerCnt = summary
        .map((map) => map["correct_answer"] == map["user_answer"])
        .length;

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("총 $totalQuestionCnt문제중 $correctAnswerCnt문제를 맞췄습니다."),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 400,
                child: SingleChildScrollView(
                  child: Column(
                    children: summary
                        .map(
                          (map) => ResultItem(summaryData: map),
                        )
                        .toList(),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
