class Question {
  const Question(this.questiontext, this.image, this.answers);
  final String questiontext;
  final String image;
  final List<String> answers;

  List<String> getShuffledList() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
