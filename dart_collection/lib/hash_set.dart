import 'dart:collection';

void main(){
  final set = HashSet<String>(); // doesn't guarantee the order by the input's order

  set..add('Jonathan')..add('Ma')..add('Nathaniel')..add('Nathaniel'); // a regular set, won't allow duplicates

  print(set); // {Ma, Jonathan, Nathaniel} ordered by their hashCode
  // DISCLAIMER! the use of HashSet can ruin your data order, i.e. when you load data from database and store it into hashSet
  // the order of the data can change depends on their hashCode
}