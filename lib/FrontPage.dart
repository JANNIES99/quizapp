import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  const FrontPage(this.startQuiz, {super.key});
  final void Function() startQuiz;
  void Quiz() {
    print("Hello");
    startQuiz();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(40),
          child: const Image(
            image: AssetImage("assets/quiz-logo.png"),
            color: Color.fromARGB(170, 255, 255, 255),
          ),
        ),
        const Text(
          "Learn Flutter The Fun Way ",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: OutlinedButton(
            onPressed: () {
              Quiz();
            },
            child: const Text(
              "Start Quiz",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
