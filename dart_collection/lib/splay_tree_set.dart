import 'dart:collection';

void main() {
  final treeSet = SplayTreeSet<int>();
  final stringTree = SplayTreeSet<String>();
  // it will automatically handle the complexity to order the data with an ascending order

  treeSet.addAll([1, 3, 4, 5, 7, 6, 2, 0, 8]);
  stringTree.addAll(
    ['Air', 'Nike', 'Jordan', 'Crystal']
  );

  print(treeSet); // {0, 1, 2, 3, 4, 5, 6, 7, 8}
  print(stringTree); // {Air, Crystal, Jordan, Nike}
}
