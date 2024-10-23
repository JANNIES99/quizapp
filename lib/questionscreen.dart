import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/SEB.dart';
import 'package:quizapp/model/listQuestion.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int currIndex = 0;

  void nextState() {
    setState(() {
      currIndex++;
    });
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
                fontSize: 20,
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
                  child: SEB(item, nextState),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
