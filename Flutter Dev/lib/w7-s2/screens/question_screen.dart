import 'package:flutter/material.dart';
import 'package:w3_s3_practice/w7-s1/model/submission.dart';
import 'package:w3_s3_practice/w7-s1/widgets/app_button.dart';
import '../model/quiz.dart';

class QuestionScreen extends StatefulWidget {
  final Quiz quiz;

  const QuestionScreen({super.key, required this.quiz});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestion = 0;

  void onAnswerSelect(String answer) {
    print("Selected answer: $answer");

    if (currentQuestion < widget.quiz.questions.length - 1) {
      setState(() {
        currentQuestion++;
      });
    } else {
      print("Quiz completed");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Quiz completed!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.quiz.questions[currentQuestion];

    return Scaffold(
      backgroundColor: Colors.blue.shade100, // Light blue background
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.quiz.title),
        elevation: 0, // Flat app bar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // Horizontal padding for layout
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center align content
            crossAxisAlignment: CrossAxisAlignment.center, // Center align text
            children: [
              
              Text(
                question.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, 
                ),
              ),
              const SizedBox(height: 40), // Space between question and answers

              
              ...question.possibleAnswers.map(
                (answer) => Padding(
                  padding: const EdgeInsets.only(bottom: 12.0), // Spacing between buttons
                  child: AppButton(
                    answer,
                    onTap: () => onAnswerSelect(answer),
                  
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
