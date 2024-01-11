import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/homepge.dart';
import 'package:adv_basics/quetsions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectAnswer = [];
  var activeScreen = 'homepage';

  void switchScreen() {
    setState(
      () {
        activeScreen = 'questions_screen';
      },
    );
  }

  void chooseAnswer(String answer) {
    selectAnswer.add(answer);
    if (selectAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'results_screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomePage(switchScreen);

    if (activeScreen == 'questions_screen') {
      screenWidget = QuetsionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results_screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectAnswer,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(48, 12, 111, 1),
                Color.fromRGBO(79, 35, 155, 1),
              ],
              transform: GradientRotation(54),
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
