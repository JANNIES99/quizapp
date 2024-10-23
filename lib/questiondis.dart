class Questiondis {
  Questiondis(this.Question, this.Option);
  final String Question;
  final List<String> Option;
  List<String> shuffleList() {
    final List<String> shuffledList = List.of(Option);
    shuffledList.shuffle();
    return shuffledList;
  }
}
