import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/SEB.dart';
import 'package:quizapp/model/listQuestion.dart';

class Questions extends StatefulWidget {
  const Questions(this.onSelect, {super.key});
  final void Function(String) onSelect;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int currIndex = 0;

  void nextState(String answer) {
    widget.onSelect(answer);
    setState(
      () {
        currIndex++;
        if (currIndex == listQuestions.length) {
          currIndex = 0;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = listQuestions[currIndex];
    return Center(
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              state.Question,
              style: GoogleFonts.abel(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            ...state.shuffleList().map(
              (item) {
                return Container(
                  padding: const EdgeInsets.all(5),
                  child: SEB(
                    item,
                    () {
                      nextState(item);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
