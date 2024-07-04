
void main() {
  //countUp().listen((val) => print(val), onDone: () => print("done"));
  //stopwatch().listen((val) => print(val));
  watch(6);
}

Stream<int> countUp() async* {
  for (int i = 0; i <= 5; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> stopwatch() {
  return Stream.periodic(Duration(seconds: 1), (nums) => nums);
}

void watch(int i) {
  final stop = Stream<int>.periodic(Duration(seconds: 1), ((e) => e*e)).take(i);
  stop.forEach(print);
}