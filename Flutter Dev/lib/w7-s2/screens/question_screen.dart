import 'package:flutter/material.dart';
import 'package:w3_s3_practice/w7-s2/model/submission.dart';
import 'package:w3_s3_practice/w7-s2/widgets/app_button.dart';
import '../model/quiz.dart';

class QuestionScreen extends StatefulWidget {
  final Question question;
  final void Function(String) onAnswerSelect; 

  const QuestionScreen({super.key, required this.question, required this.onAnswerSelect});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestion = 0;


  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.blue.shade100, // Light blue background
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('quiz'),
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // Horizontal padding for layout
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              
              Text(
                widget.question.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, 
                ),
              ),
              const SizedBox(height: 40), // Space between question and answers

              
              ...widget.question.possibleAnswers.map(
                (answer) => Padding(
                  padding: const EdgeInsets.only(bottom: 12.0), // Spacing between buttons
                  child: AppButton(
                    
                    answer,
                    onTap: () => widget.onAnswerSelect(answer),
                    
                    icon: Icons.question_answer,
                  
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
