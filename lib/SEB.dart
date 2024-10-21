import 'package:flutter/material.dart';

class SEB extends StatelessWidget {
  const SEB(this.answer, {super.key});
  final String answer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(),
      child: Text(
        answer,
      ),
    );
  }
}
