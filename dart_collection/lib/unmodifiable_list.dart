import 'dart:collection';

void main(){
  final names = ['Jonathan', 'Andrew', 'Ng'];
  final unmodifiableNames = UnmodifiableListView(names);

  print(names);
  // unmodifiableNames.add('Karen'); the elements can't be change anymore
  // unmodifiableNames[0] = 'Karen';
  print(unmodifiableNames);
}