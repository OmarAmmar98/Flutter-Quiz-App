import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final introImage = 'assets/images/quiz-logo.png';
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, //center vertically
        children: [
          Image.asset(introImage,
              width: 300, color: const Color.fromARGB(87, 255, 255, 255)),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Learn Flutter the fun way',
            style: GoogleFonts.lato(
              fontSize: 28, 
              color: const Color.fromARGB(255, 234, 182, 255)),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  // padding: const EdgeInsets.only(top: 25),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 14)),
              label: const Text('Start Quiz'),
              icon: const Icon(Icons.arrow_right_alt_rounded))
        ],
      ),
    );
  }
}
