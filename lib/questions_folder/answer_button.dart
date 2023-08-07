import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.onTap, this.answer, {super.key});

  final void Function() onTap;
  final String answer;

  @override
  Widget build(context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 30, 60),
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
        onPressed: onTap,
        child: Text(answer));
  }
}
