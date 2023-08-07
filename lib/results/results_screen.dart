import 'package:flutter/material.dart';
import 'package:gk_quiz/questions_folder/question_and_answer/ques_ans.dart';
import 'package:gk_quiz/results/summary_data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chossenAnswer, this.restartQuiz, {super.key});
  final List<String> chossenAnswer;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < chossenAnswer.length; i++) {
      summary.add({
        'question-index': i,
        'question': quizQuestions[i].questiontext,
        'correct-answer': quizQuestions[i].answers[0],
        'chosen-answer': chossenAnswer[i]
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final totalQuestions = quizQuestions.length;
    final correctAns = getSummaryData().where((data) {
      return data['correct-answer'] == data['chosen-answer'];
    }).length;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('$correctAns out of $totalQuestions question answer correctly',
            style: const TextStyle(
                fontSize: 20, color: Color.fromARGB(170, 255, 255, 255))),
        const SizedBox(
          height: 30,
        ),
        QuestionSummary(getSummaryData()),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
            icon: const Icon(Icons.restart_alt_rounded, color: Colors.white),
            onPressed: restartQuiz,
            label: const Text(
              'Restart Quiz',
              style: TextStyle(color: Colors.white),
            ))
      ],
    );
  }
}
