import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/quiz_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

// (250, 43, 244, 17)
// (248, 221, 68, 68)

class _QuizState extends State<Quiz> {
  String currentScreenType = "start";
  final List<String> userAnswers = [];

  void switchScrren() {
    setState(() {
      currentScreenType = "quiz";
    });
  }

  void addUserAnswer(String userAnswer) {
    userAnswers.add(userAnswer);

    if (userAnswers.length == questions.length) {
      setState(() {
        currentScreenType = "result";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = StartScreen(onClickHandler: switchScrren);

    if (currentScreenType == "quiz") {
      activeScreen = QuizScreen(onAddUserAnswer: addUserAnswer);
    }

    if (currentScreenType == "result") {
      activeScreen = ResultScreen(userAnswers: userAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(248, 213, 74, 42),
                Color.fromARGB(248, 221, 68, 68)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
