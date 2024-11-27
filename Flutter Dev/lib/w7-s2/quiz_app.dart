import 'package:flutter/material.dart';
import 'package:w3_s3_practice/w7-s1/screens/question_screen.dart';
import 'package:w3_s3_practice/w7-s1/screens/welcome_screen.dart';
import 'model/quiz.dart';

enum Screen { welcome, quiz }

Color appColor = Colors.blue[500] as Color;

class QuizApp extends StatefulWidget {
  const QuizApp(this.quiz, {super.key});

  final Quiz quiz;

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  Screen currentScreen = Screen.welcome;

  void navigateToQuiz() {
    setState(() {
      currentScreen = Screen.quiz;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: appColor,
        body: Center(
          child: currentScreen == Screen.welcome
              ? WelcomeScreen(
                  quiz: widget.quiz,
                  onTap: navigateToQuiz,
                )
              : QuestionScreen(quiz: widget.quiz),
        ),
      ),
    );
  }
}
