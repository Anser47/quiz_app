import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_questions.dart';

class Qustions extends StatefulWidget {
  const Qustions({super.key, required this.onSelectedAnswers});
  final Function(String answer) onSelectedAnswers;
  @override
  State<StatefulWidget> createState() => _QustionState();
}

class _QustionState extends State<Qustions> {
  var currentQustionsIndex = 0;
  void answerToQustions(String answer) {
    widget.onSelectedAnswers(answer);
    setState(() {
      currentQustionsIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQustions = questions[currentQustionsIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQustions.text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQustions.getShuffledAnswers().map((e) {
              return AnswerButton(
                  answer: e,
                  onTap: () {
                    answerToQustions(e);
                  });
            })
          ],
        ),
      ),
    );
  }
}

class AnswerButton extends StatelessWidget {
  AnswerButton({super.key, required this.answer, required this.onTap});
  String answer;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 249, 165, 39),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: () {
        onTap();
      },
      child: Text(
        answer,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
