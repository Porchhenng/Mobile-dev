import 'package:w3_s3_practice/w7-s2/model/quiz.dart';
import 'package:w3_s3_practice/w7-s2/model/submission.dart';
void main(){
  Question q1 = Question
  (title: 'WHAT IS THIS', 
  possibleAnswers: ['red', 'blue', 'yellow'], 
  goodAnswer: 'yellow');

  Quiz quiz = new Quiz(title: 'quiz1', questions: [q1]);

   print('Quiz Title: ${quiz.title}');
  print('First Question: ${quiz.questions[0].title}');
  
  Submission? submission = Submission();

  submission.addAnswer(q1, 'red');
  // submission.addAnswer(q1, 'yellow');

  Answer answer = Answer(question: q1, answers: 'yellow');

  answer.isCorrect();

  print(submission.getScore().toString());

  

}