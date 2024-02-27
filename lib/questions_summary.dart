import 'package:flutter/material.dart';
import 'package:adv_basics/results/circle.dart';
import 'package:adv_basics/results/summary.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          
          children: summaryData.map(
            (data) {
              return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Circle(
                        questionIndex: ((data['question-index'] as int) + 1),
                        correct: ((data['user-answer'] as String) ==
                            (data['correct'] as String))),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Summary(
                      question: (data['question'] as String),
                      userAnswer: (data['user-answer'] as String),
                      correctAnswer: (data['correct'] as String),
                    )),
                  ]);
            },
          ).toList(),
        ),
      ),
    );
  }
}
