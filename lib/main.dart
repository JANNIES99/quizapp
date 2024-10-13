import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/FrontPage.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 98, 10, 175),
              Color.fromARGB(255, 79, 1, 110)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: const SafeArea(
            child: Center(
              child: FrontPage(),
            ),
          ),
        ),
      ),
    ),
  );
}
