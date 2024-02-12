void main(){
  final list = <int>[1, 2, 3, 4, 5];

  print(list.any((element) => element < 2)); // there exists an element that satisfy the predicate (element < 2)
  print(list.every((element) => element < 6)); // all the elements have to satisfy the predicate in order to be true
  print(list.contains(3)); // there is an element that equals to 3

  print(list.every((element) => element < 4)); // false
}