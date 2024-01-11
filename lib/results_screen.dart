import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;
  List<Map<String, Object>> getSummeryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummeryData();
    final numTotalQuestions = questions.length;
    final numcorrectQuestions = summaryData.where(
      (data) {
        return data['user_answer'] == data['correct_answer'];
      },
    ).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
                'you answered $numcorrectQuestions out of $numTotalQuestions questions correctly!'),
            QuestionsSummary(summarydata: getSummeryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}