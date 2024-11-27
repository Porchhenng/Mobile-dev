import 'package:flutter/material.dart';
import 'package:w3_s3_practice/w7-s1/model/quiz.dart';
import 'package:w3_s3_practice/w7-s1/quiz_app.dart';
import 'package:w3_s3_practice/w7-s1/screens/question_screen.dart';
import 'package:w3_s3_practice/w7-s1/widgets/app_button.dart';

 class WelcomeScreen extends StatelessWidget {
  final Quiz quiz; // The Quiz object
  final VoidCallback onTap; // The callback for navigation

  const WelcomeScreen({super.key, required this.quiz, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Image.asset(
              "assets/quiz-logo.png",
              color: Colors.white,
              width: 300,
              height: 300,
            ),
          ),
        ),
        const SizedBox(height: 20),
        AppButton(
          'Start',
          onTap: onTap, // Triggers navigation
        ),
      ],
    );
  }
}
