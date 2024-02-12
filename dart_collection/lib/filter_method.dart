void main(){
  final list = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print(list.firstWhere((element) => element % 3 == 0)); // 3 : E (will return an element)
  print(list.lastWhere((element) => element % 3 == 0)); // 9 : E
  print(list.singleWhere((element) => element % 7 == 0)); // 7, because there's only one element that satisfies : E
  // otherwise it will throw an error

  print(list.skip(4)); // skip first four numbers -> (5, 6, 7, 8, 9, 10) : Iterable<E> (return an Iterable object)
  print(list.take(4)); // take first four numbers -> (1, 2, 3, 4) : Iterable<E>

  print(list.skipWhile((value) => value < 6)); // skip element that satisfies the predicate -> (6, 7, 8, 9, 10) : Iterable<E>
  print(list.takeWhile((value) => value < 6 )); // take elements that satisfy the predicate consecutively until it's false -> (1, 2, 3, 4, 5)

  print(list.where((element) => element % 2 == 0)); // will take every element that satisfies the predicate (test function) -> Iterable<E>
}