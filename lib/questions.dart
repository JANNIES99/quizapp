import 'package:flutter/material.dart';
import 'package:quizapp/SEB.dart';
import 'package:quizapp/model/listQuestion.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            listQuestions[0].Question,
          ),
          const SizedBox(
            height: 40,
          ),
          SEB(listQuestions[0].Option[0]),
          SEB(listQuestions[0].Option[1]),
          SEB(listQuestions[0].Option[2]),
          SEB(listQuestions[0].Option[3]),
        ],
      ),
    );
  }
}
