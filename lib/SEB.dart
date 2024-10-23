import 'package:flutter/material.dart';

class SEB extends StatelessWidget {
  const SEB(this.answer, this.funct, {super.key});
  final String answer;
  final void Function() funct;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: funct,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        backgroundColor: const Color.fromARGB(255, 86, 60, 159),
      ),
      child: Text(
        answer,
        style: const TextStyle(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
