class HighScores {
  var scores = <int>[];

  HighScores(List<int> theScore){
    scores.addAll(
      theScore
    );
  }

  int sum(int x, y) {
    return x + y;
  }

  int latest(){
    return scores.last;
  }

  int personalBest(){
    List<int> tempScore = List.from(scores);
    tempScore.sort();
    return tempScore.last;
  }

  Iterable<int> personalTopThree(){
    List<int> tempScore = List.from(scores);
    tempScore.sort((a, b) => b.compareTo(a));
    if (scores.length >= 3) {
      return tempScore.take(3);
    } else {
      tempScore.reversed;
      return tempScore;
    }
  }
}

void main(){
  final scores = HighScores(<int>[10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70]);
  print(scores.scores);
  print(scores.latest());
  print(scores.personalTopThree());
  print(scores.personalBest());
  print(scores.scores);
  print(scores.sum(1, 2));
  
}
