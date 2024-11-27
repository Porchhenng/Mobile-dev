import 'package:flutter/material.dart';
import 'package:w3_s3_practice/w7-s2/model/submission.dart';
import 'package:w3_s3_practice/w7-s2/screens/question_screen.dart';
import 'package:w3_s3_practice/w7-s2/screens/result_screen.dart';
import 'package:w3_s3_practice/w7-s2/screens/welcome_screen.dart';
import 'model/quiz.dart';

enum Screen { welcome, quiz, result }

Color appColor = Colors.blue[500] as Color;

class QuizApp extends StatefulWidget {
  const QuizApp(this.quiz, {super.key});

  final Quiz quiz;

  @override
  State<QuizApp> createState() => _QuizAppState();
}


class _QuizAppState extends State<QuizApp> {
   Submission submission = Submission();
   

    int currentQuestion = 0;

    

  void onAnswerSelect(String answer) {
    print("Selected answer: $answer");
    submission.addAnswer(widget.quiz.questions[currentQuestion],answer);

    if (currentQuestion < widget.quiz.questions.length - 1) {
      setState(() {
        currentQuestion++;
      });
    } else {
      setState(() {
        currentScreen = Screen.result;
      });
    }
  }
  Screen currentScreen = Screen.welcome;



  void navigateToQuiz() {
    setState(() {
      currentScreen = Screen.quiz;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;
    switch (currentScreen){
      
      case Screen.welcome:
        screen = WelcomeScreen(
                  quiz: widget.quiz,
                  onTap: navigateToQuiz,
                );
        break;
      case Screen.quiz:
        screen = QuestionScreen(question: widget.quiz.questions[currentQuestion], onAnswerSelect: onAnswerSelect);
        break;
      case Screen.result:
      screen = ResultScreen(submission: submission);    
      }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: appColor,
        body: Center(
          child: screen
        ),
      ),
    );
  }
}
