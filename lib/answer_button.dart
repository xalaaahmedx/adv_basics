import 'package:flutter/material.dart';

class Answer_Button extends StatelessWidget {
  const Answer_Button(
      {super.key, required this.answerText, required this.onTap});
  final String answerText;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          ),
          backgroundColor: const Color.fromARGB(255, 45, 28, 75),
          foregroundColor: const Color.fromARGB(221, 255, 255, 255),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
