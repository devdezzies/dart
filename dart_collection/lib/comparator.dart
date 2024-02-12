import 'dart:collection';

void main(){
  // by default, SplayTreeSet will order the data in an ascending order, unless we add a comparator into the paramater
  final treeSet = SplayTreeSet<int>((first, second) => second.compareTo(first)); // descending order

  treeSet.addAll(
    [1, 4, 2, 7, 5, 3, 0, 9, 8, 7, 9, 3]
  );

  print(treeSet);
}