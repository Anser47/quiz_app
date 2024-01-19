import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 240, 228, 9),
          Color.fromARGB(255, 246, 154, 34),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 500,
              color: Color.fromARGB(150, 244, 244, 244),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          const Text(
            'Let\'s learn flutter the fun way!',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.black),
            child: const Text(
              'Start',
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    ));
  }
}
