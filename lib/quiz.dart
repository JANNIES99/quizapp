import 'package:flutter/material.dart';
import 'package:quizapp/FrontPage.dart';
import 'package:quizapp/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  void switchScreen() {
    setState(() {
      activeScreen = const Questions();
    });
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
