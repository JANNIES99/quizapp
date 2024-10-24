import 'package:flutter/material.dart';
import 'package:quizapp/FrontPage.dart';
import 'package:quizapp/model/listQuestion.dart';
import 'package:quizapp/questionscreen.dart';
import 'package:quizapp/resultscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  Widget? activeScreen;
  void switchScreen() {
    setState(
      () {
        activeScreen = Questions(onSelect);
      },
    );
  }

  void returnStart() {
    selectedAnswer = [];
    setState(() {
      activeScreen = FrontPage(switchScreen);
    });
  }

  void onSelect(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == listQuestions.length) {
      setState(() {
        activeScreen = Resultscreen(selectedAnswer, returnStart);
      });
    }
  }

  @override
  void initState() {
    activeScreen = FrontPage(switchScreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 98, 10, 175),
                Color.fromARGB(255, 79, 1, 110)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SafeArea(
            child: Center(
              child: activeScreen,
            ),
          ),
        ),
      ),
    );
  }
}
