import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({Key? key, required this.summarydata})
      : super(key: key);
  final List<Map<String, Object>> summarydata;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: summarydata.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text(
                    ((data['question_index'] as int) + 1).toString(),
                    textAlign: TextAlign.left,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                        Text(
                            data['questions'] as String? ??
                                'No question available',
                            textAlign: TextAlign.left),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                            data['user_answer'] as String? ??
                                'No answer provided',
                            textAlign: TextAlign.left),
                        Text(
                            data['correct_answer'] as String? ??
                                'No correct answer',
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
