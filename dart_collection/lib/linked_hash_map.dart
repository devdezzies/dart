import 'dart:collection';

void main(){

  /*
  final Map<String, String> users = {
    "firstName" : "Kevin",
    "lastName" : "Daniel"
  };
  */
  final users = LinkedHashMap<String, String>(); // they're both the same!
  // final users = Map<String, String>();

  users['firstName'] = 'Kevin';
  users['lastName'] = 'Daniel';


  print(users);
  print(users['firstName']);

  users['middleName'] = 'Anggara';

  print(users);
}