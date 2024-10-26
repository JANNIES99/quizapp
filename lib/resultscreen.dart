import 'package:flutter/material.dart';
import 'package:quizapp/Summary.dart';
import 'package:quizapp/model/listQuestion.dart';
import 'package:google_fonts/google_fonts.dart';

class Resultscreen extends StatelessWidget {
  Resultscreen(this.chosenAnswers, this.returnStart, {super.key});
  List<String> chosenAnswers;
  void Function() returnStart;
  final List<Map<String, Object>> resultTab = [];
  @override
  Widget build(BuildContext context) {
    int correctcount = 0;
    int totalcount = listQuestions.length;
    for (int i = 0; i < totalcount; i++) {
      resultTab.add({
        "Index": i,
        "Question": listQuestions[i].Question,
        "Answer": listQuestions[i].Option[0],
        "Choosen": chosenAnswers[i],
      });
      if (chosenAnswers[i] == listQuestions[i].Option[0]) {
        correctcount++;
        resultTab[i]["isCorrect"] = true;
      } else {
        resultTab[i]["isCorrect"] = false;
      }
    }

    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $correctcount out of $totalcount questions correctly",
              style: GoogleFonts.abel(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Summary(resultTab),
            OutlinedButton(
              onPressed: returnStart,
              child: const Text(
                "Return",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
