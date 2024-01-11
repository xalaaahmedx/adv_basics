import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 200,
          ),
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 100,
          ),
          const Text(
            'Learn Flutter The fun way!',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 143, 109, 228)),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            label: const Text(
              'start quiz',
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: const Color.fromARGB(255, 184, 167, 212),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
            ),
          )
        ],
      ),
    );
  }
}
