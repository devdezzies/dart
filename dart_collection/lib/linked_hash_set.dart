void main(){
  final set = <String>{}; // LinkedHasSet<String>()

  set..add('Jonathan')..add('Ma')..add('Nathaniel')..add('Nathaniel'); // a regular set, won't allow duplicates

  print(set);
}