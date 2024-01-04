import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class StartScreen extends StatelessWidget {
  //from quiz.dart we have passed the function
  const StartScreen(this.startQuiz,
      {super.key}); // we should accept key arguement (named) and pass it to statelesswidget class hence we should write super.key

  final void Function() startQuiz; // it contains startQuiz function

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(
            'assets/images/quiz-logo.json',
            width: 750,
            height: 300,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.openSans(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 27,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            label: const Text(
              "Start Quiz",
              style: TextStyle(
                color: Color.fromARGB(255, 227, 235, 252),
              ),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
