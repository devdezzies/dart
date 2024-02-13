import 'dart:collection';

void main(){

  final scores = HashMap<String, int>();
  // the difference between HashMap and Map is in the data structure implementation, in which HashMap uses ==hashcode== to order the data
  // whereas Map uses ==double-linked list== to order the data which means the data inside the collection will be ordered by the input order

  scores['John'] = 100;
  scores['Demian'] = 100;
  scores['Devara'] = 100;
  scores['Demi'] = 100;
  scores['Keith'] = 100;

  print(scores);

}