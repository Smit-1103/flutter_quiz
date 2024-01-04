class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);   // it is used to copy the old list into new list
    shuffledList.shuffle(); // shuffle the options
    return shuffledList;
  }
}
