void main(){

  final Map<String, String> user = {
    'firstName' : 'John', // one unit of MapEntry<K, V>
    'lastName' : 'Neph'
  };

  print(user.entries); // -> Iterable<MapEntry<Key, Value>> :  OUTPUT: (MapEntry(firstName: John), MapEntry(lastName: Neph))

  for (var entry in user.entries){
    print("${entry.key} : ${entry.value}");
  }


}