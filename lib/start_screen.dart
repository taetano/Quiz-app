import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  final void Function() onClickHandler;

  const StartScreen({super.key, required this.onClickHandler});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.jpeg",
            width: 300,
          ),
          Text(
            "퀴즈 Demo",
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  color: Color.fromARGB(250, 43, 244, 17), fontSize: 24),
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: onClickHandler,
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(250, 43, 244, 17),
                shape: const BeveledRectangleBorder()),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "퀴즈 시작",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
