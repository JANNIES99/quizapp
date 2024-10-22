import 'package:flutter/material.dart';
import 'package:quizapp/SEB.dart';
import 'package:quizapp/model/listQuestion.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var state = listQuestions[0];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            state.Question,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ...state.Option.map(
            (item) {
              return SEB(item, () {});
            },
          ),
        ],
      ),
    );
  }
}
