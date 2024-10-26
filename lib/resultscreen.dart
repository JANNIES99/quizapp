import 'package:flutter/material.dart';
import 'package:quizapp/Summary.dart';
import 'package:quizapp/model/listQuestion.dart';
import 'package:google_fonts/google_fonts.dart';

List<Map<String, Object>> resultTab = [];

class Resultscreen extends StatelessWidget {
  Resultscreen(this.chosenAnswers, this.returnStart, {super.key});
  List<String> chosenAnswers;
  void Function() returnStart;

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
      }
    }

    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $correctcount out of $totalcount questions correctly!",
              style: GoogleFonts.abel(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Summary(resultTab),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(0, 255, 255, 255),
              ),
              onPressed: returnStart,
              child: const SizedBox(
                width: 80,
                child: Center(
                  child: Wrap(
                    children: [
                      Icon(Icons.refresh),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Return",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
