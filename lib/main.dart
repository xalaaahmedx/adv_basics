import 'package:adv_basics/quiz.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(48, 12, 111, 1),
              Color.fromRGBO(79, 35, 155, 1),
            ], transform: GradientRotation(54)),
          ),
          child: const Quiz(),
        ),
      ),
    );
  }
}
