void main(){
  final num = [1, 3, 4, 5, 6];
  num.insert(1, 2);
  print(num); // [1, 2, 3, 4, 5, 6]

  final anotherNum = [];
  anotherNum.addAll(num); // [1, 2, 3, 4, 5, 6]
  print(anotherNum);

  // OPERATORS

  final nextNum = [7, 8, 9, 10];
  print(num + nextNum); // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  print(num == nextNum); // false
}