import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_questions.dart';
import 'package:quiz_app/qustion_summery.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.selectedAnswers});
  final List<String> selectedAnswers;
  List<Map<String, Object>> getSummery() {
    List<Map<String, Object>> summery = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summery.add({
        'qustion_index': i,
        'qustions': questions[i].text,
        'correct_answers': questions[i].answers[0],
        'user_selected': selectedAnswers[i],
      });
    }
    return summery;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummery();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((e) {
      return e['user_selected'] == e['correct_answers'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of  $numTotalQuestions questions correctly !',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
           const SizedBox(height: 20,),
            QustionSummery(
              summaryData,
            ),
            const SizedBox(
              height: 30,
            ),
            // const Text('List of answers and questions'),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz! '))
          ],
        ),
      ),
    );
  }
}
