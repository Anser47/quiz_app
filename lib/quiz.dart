import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_questions.dart';
import 'package:quiz_app/qustions_screen.dart';
import 'package:quiz_app/results_page.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var currentScreen = 'start_screen';
 List<String>selectedAnswers=[];
  @override
  void initState() {
    super.initState();
  }

  void changeScreen() {
    setState(
      () {
        currentScreen = 'qustions_screen';
      },
    );
  }
void chooseAnswer(String answer){
selectedAnswers.add(answer);
if (selectedAnswers.length==questions.length) {
  setState(() {
   
    currentScreen='end_screen';
  });
}
}
  @override
  Widget build(BuildContext context) {
    Widget screenWidget=StartScreen(changeScreen);
    if (currentScreen=='qustions_screen') {
      screenWidget=Qustions(onSelectedAnswers: chooseAnswer);
    }
    if (currentScreen=='end_screen') {
      screenWidget= ResultsScreen(selectedAnswers: selectedAnswers,);
    }
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
          child: screenWidget
        ),
      ),
    );
  }
}
