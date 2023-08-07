import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: summaryData.map((data) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                        color: data['correct-answer'] == data['chosen-answer']
                            ? const Color.fromARGB(255, 184, 255, 140)
                            : const Color.fromARGB(255, 255, 129, 129)),
                    child: Text(
                      (((data['question-index'] as int) + 1).toString()),
                      style: const TextStyle(fontSize: 15),
                    )),
                Expanded(
                  child: Column(
                    children: [
                      Text(textAlign: TextAlign.center,
                        (data['question'] as String),
                        style:
                            const TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        (data['chosen-answer'] as String),
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 246, 255, 143)),
                      ),
                      Text(
                        (data['correct-answer'] as String),
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 123, 255, 121)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
