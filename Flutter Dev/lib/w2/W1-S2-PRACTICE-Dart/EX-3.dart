void main() {
  // List of student scores
  List<int> scores = [45, 67, 82, 49, 51, 78, 92, 30];
  calScore(scores);
}

void calScore(List<int> scores) {
  int passed = 0;
  List<int> passedScore = [];

  for (int i = 0; i < scores.length; i++) {
    if (scores[i] >= 50) {
      passed++;
      passedScore.add(scores[i]);
    }
  }

  // Print all passed scores
    print("Passed score: ${passedScore}");
  

  print("The number of students who passed is: $passed");
}
