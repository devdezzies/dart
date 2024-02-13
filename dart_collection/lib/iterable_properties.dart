void main(){
  final list = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];

  print(list.first);
  print(list.last);
  print(list.length);
  print(list.isEmpty);
  print(list.isNotEmpty);
  try {
    print(list.single);
  } catch (e){
    print('this will throw an error');
  }
  print(list.indexed); // ((0, 1), (1, 2), (2, 3), (3, 4), (4, 5), (5, 6), (6, 7), (7, 8), (8, 9)) combine index with the elemen t
}