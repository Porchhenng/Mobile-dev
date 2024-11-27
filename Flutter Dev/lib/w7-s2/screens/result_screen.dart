import 'package:flutter/material.dart';
import 'package:w3_s3_practice/w6-s1-practice/EXERCISE-1.dart';
import 'package:w3_s3_practice/w7-s2/model/quiz.dart';
import 'package:w3_s3_practice/w7-s2/model/submission.dart';
import 'package:w3_s3_practice/w7-s2/widgets/app_button.dart';
import 'dart:collection';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.submission});
  final Submission submission;
  late Question question;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            children: [
            ...submission.answers.indexed.map((item) => Result(answer: item.$2, index: item.$1)),
            
            ],
          ),
        )
      ],
    );
  }
}

class Result extends StatelessWidget {
  Answer answer;
  int index;
  Result({required this.answer, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Column(
        children: [
          Text('${answer.question.title}'),
          const SizedBox(height: 10),
          ...answer.question.possibleAnswers.map((index) => Text(index))
        ],
      ),
    );
  }
}
