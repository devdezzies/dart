void main(){

  final Map<String, String> users = {
    "firstName" : "Kevin",
    "lastName" : "Daniel"
  };

  print(users);
  print(users['firstName']);

  users['middleName'] = 'Anggara';

  print(users);
}