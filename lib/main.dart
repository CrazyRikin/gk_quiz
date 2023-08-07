import 'package:flutter/material.dart';
import 'package:gk_quiz/quiz_states.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 0, 75, 156),
              Color.fromARGB(255, 41, 105, 224)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: const Center(child: Quiz()),
        ),
      ),
    ),
  );
}
