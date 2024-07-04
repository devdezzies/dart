class WordCount {
  countWords(String text) {
    final wordList = Map<String, int>();
    RegExp regex = RegExp(r"\b[a-zA-Z0-9']+\b");
    Iterable<Match> matches = regex.allMatches(text.toLowerCase());
    List<String> result = matches.map((match) => match.group(0)!).toList();
    result.forEach((element) {
      wordList.update(element, (value) => value + 1, ifAbsent: () => 1);
    });
    return wordList;
  }
}

void main() {
  final wordCount = WordCount();
  print(wordCount.countWords('testing, 1, 2 testing'));
}
