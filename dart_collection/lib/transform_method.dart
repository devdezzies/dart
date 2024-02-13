void main(){
  final list = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print(list.expand((element) => [element, element])); // (1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10) : Iterable<t>
  print(list.expand((element) => List.filled(element, element))); // (1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, ..., 10, 10)
  print(list.map((element) => element * 2)); // (2, 4, 6, 8, 10, 12, 14, 16, 18, 20) : Iterable<T>
  print(list.join(', ')); // "1, 2, 3, 4, 5, 6, 7, 8, 9, 10"


  print(list.fold("", (previousValue, element) => "$previousValue, $element")); // ", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10" : T
  // fold(T initialValue, T combine(prev, element)) : T

  print(list.reduce((value, element) => value + element)); // 55 : E

  final names = <String>['Johan', 'Arthur', 'Harry'];

  String firstLetters = names.fold("", (previousValue, element) => previousValue + element[0]);
  print(firstLetters); // JAH
}