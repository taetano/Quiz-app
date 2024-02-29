import 'package:flutter/material.dart';

class ResultItem extends StatelessWidget {
  final Map<String, Object> summaryData;
  const ResultItem({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 30,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.blue[300]),
          child: Text(summaryData["question_no"].toString()),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(summaryData["question"] as String),
              Text(summaryData["user_answer"] as String),
              Text(summaryData["correct_answer"] as String),
            ],
          ),
        ),
      ],
    );
  }
}
