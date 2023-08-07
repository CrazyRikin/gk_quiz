import 'package:flutter/material.dart';
import 'package:gk_quiz/home_page.dart';
import 'package:gk_quiz/questions_folder/question_page.dart';
import 'package:gk_quiz/questions_folder/question_and_answer/ques_ans.dart';
import 'package:gk_quiz/results/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activescreen = 'home-page';
  List<String> selectedanswers = [];

  void onClickingAnswer(String selectedanswer) {
    selectedanswers.add(selectedanswer);
    if (selectedanswers.length == quizQuestions.length) {
      setState(() {
        activescreen = 'result-screen';
      });
    }
  }

  void toQuestionPage() {
    setState(() {
      activescreen = 'question-page';
    });
  }

  void restartingQuiz() {
    setState(() {
      activescreen = 'startscreen';
      selectedanswers = [];
      const Quiz();
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = HomePage(toQuestionPage);

    if (activescreen == 'question-page') {
      screenWidget = QuestionPage(onClickingAnswer);
    }

    if (activescreen == 'result-screen') {
      screenWidget = ResultScreen(selectedanswers,restartingQuiz);
    }


    return screenWidget;
  }
}
