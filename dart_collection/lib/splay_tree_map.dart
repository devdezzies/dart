import 'dart:collection';

void main(){

  final descendingScore = SplayTreeMap<String, int>((a, b) => b.compareTo(a)); // will order the data in a descending order by comparing the data's ==keys==

  descendingScore['Any'] = 300;
  descendingScore['Johny'] = 100;
  descendingScore['Dony'] = 100;
  descendingScore['Benny'] = 200;

  final ascendingScore = SplayTreeMap.from(descendingScore);

  print(ascendingScore);
  print(descendingScore);

}