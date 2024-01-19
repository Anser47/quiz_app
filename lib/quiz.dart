import 'package:flutter/material.dart';
import 'package:quiz_app/qustions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget currentScreen = const StartScreen();
  void changeScreen() {
    setState(() {
      currentScreen = const Qustions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 240, 228, 9),
              Color.fromARGB(255, 246, 154, 34),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: StartScreen(),
        ),
      ),
    );
  }
}
