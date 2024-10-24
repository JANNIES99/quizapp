import 'package:flutter/material.dart';
import 'package:quizapp/model/listQuestion.dart';

class Resultscreen extends StatelessWidget {
  Resultscreen(this.chosenAnswers, this.returnStart, {super.key});
  List<String> chosenAnswers;
  void Function() returnStart;
  @override
  Widget build(BuildContext context) {
    int correctcount = 0;
    int totalcount = listQuestions.length;
    for (int i = 0; i < totalcount; i++) {
      if (chosenAnswers[i] == listQuestions[i].Option[0]) {
        correctcount++;
      }
    }

    return Center(
      child: Column(
        children: [
          Text(
            "You answered $correctcount out of $totalcount questions correctly",
          ),
          ElevatedButton(
            onPressed: returnStart,
            child: const Text(
              "Return",
            ),
          )
        ],
      ),
    );
  }
}
