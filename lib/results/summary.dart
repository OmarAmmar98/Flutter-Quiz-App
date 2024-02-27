import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Summary extends StatelessWidget {
  const Summary(
      {super.key,
      required this.question,
      required this.userAnswer,
      required this.correctAnswer});

  final String question, userAnswer, correctAnswer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Q: $question',
          style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 17,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Your answer: $userAnswer',
          style: GoogleFonts.lato(
              color: userAnswer == correctAnswer
                  ? const Color.fromARGB(255, 35, 153, 74)
                  : const Color.fromARGB(255, 201, 43, 43),
              fontSize: 13,
              fontWeight: FontWeight.normal),
        ),
        Text(
          'Correct answer: $correctAnswer',
          style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 35, 153, 74),
              fontSize: 13,
              fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
