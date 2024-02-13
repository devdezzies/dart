void main(){
  final numbers = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];

  var numList = numbers.expand((element) => List.filled(element, element)).toList(growable: false); // Iterable<T> -> List<E> (growable is by default true)
  // numList.add(1); because it's fixed since the growable parameter is set to false
  var numSet = numbers.toSet();
  print(numList);
  print(numSet);
}