import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 240, 228, 9),
          Colors.orange
          // Color.fromARGB(255, 246, 154, 34),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 400,
              height: 400,
              color: const Color.fromARGB(150, 244, 244, 244),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          const Text(
            'Let\'s learn flutter the fun way!',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.black),
            child: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    ));
  }
}
