import 'package:flutter/material.dart';
import 'package:gk_quiz/questions_folder/answer_button.dart';
import 'package:gk_quiz/questions_folder/template/question_template.dart';
import 'package:gk_quiz/questions_folder/question_and_answer/ques_ans.dart';
import 'package:gk_quiz/quiz_states.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage(this.onClick, {super.key});

  final void Function(String selectedanswer) onClick;
  @override
  State<QuestionPage> createState() {
    return _QuestionPageState();
  }
}

class _QuestionPageState extends State<QuestionPage> {
  var currentquestionindex = 0;

  void nextQuestion(answer) {
    setState(() {
      widget.onClick(answer);
      currentquestionindex++;
    });
  }

  @override
  Widget build(context) {
    var currentquestion = quizQuestions[currentquestionindex];
    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            textAlign: TextAlign.center,
            currentquestion.questiontext,
            style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 30),
          Image.asset(
            currentquestion.image,
            height: 200,
          ),
          const SizedBox(height: 30),
          ...currentquestion.getShuffledList().map((answer) {
            return AnswerButton(() {
              nextQuestion(answer);
            }, answer);
          })
        ],
      ),
    );
  }
}
