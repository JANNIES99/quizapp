import 'package:flutter/material.dart';

void main() {
  runApp(const FrontPage());
}

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(40),
                  child: const Image(image: AssetImage("assets/quiz-logo.png")),
                ),
                const Text(
                  "Learn Flutter The Fun Way ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  color: const Color.fromARGB(255, 59, 0, 98),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      "Start Quiz",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 59, 0, 98),
      ),
    );
  }
}
