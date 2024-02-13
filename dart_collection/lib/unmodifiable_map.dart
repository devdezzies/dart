import 'dart:collection';

void main(){

  final Map<String, String> users = {
    "firstName" : "Kevin",
    "lastName" : "Daniel"
  };

  final unmodifiableMap = UnmodifiableMapView(users);

  print(users);
  print(users['firstName']);

  users['middleName'] = 'Anggara';

  print(users);
  // unmodifiableMap['firstName'] = 'John'; ERROR
  print(unmodifiableMap);
}