import 'package:w3_s3_practice/w7-s1/model/quiz.dart';
import 'dart:core';

class Answer {
  String? answers;
  late final Question question;

  Answer({required this.question, required this.answers});
  
 bool isCorrect() => answers == question.goodAnswer;

}

class Submission{
   List<Answer> answers = [];
  Submission();
  
 int  getScore(){
  int sum = 0;
  for (Answer answer in answers)
  {if (answer.isCorrect())
   sum++;}
  return sum; 
  }
    // Add or update an answer for a question
  void addAnswer(Question question, String answer) {
    
    Answer? existingAnswer;
    for (var ans in answers) {
      if (ans.question == question) {
        existingAnswer = ans;
        break;
      }
    }

    if (existingAnswer != null) {
      // Update the existing answer
      existingAnswer.answers = answer;
    } else {
      answers.add(Answer(question: question, answers: answer));
    }
  }
  void removeAnswer(Question question) {
    answers.removeWhere((answer) => answer.question == question);
  }
}
 

