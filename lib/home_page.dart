import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.questionsScreen,{super.key});

  final void Function() questionsScreen;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('THE ULTIMATE GK QUIZ !!',
            style: GoogleFonts.lato(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 30),
        Image.asset('assets/images/quiz-logo.png', height: 250),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed:questionsScreen ,
          icon: const Icon(Icons.arrow_right_alt_outlined, color: Colors.white),
          label: Text('Start Quiz!',
              style: GoogleFonts.lato(fontSize: 20, color: Colors.white)),
        )
      ],
    );
  }
}
