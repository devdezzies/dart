class Database {

  String? username;
  String? pass;

  static String category = 'Miscellaneous';

  static String id = '123';

  Database(){
    print('create a new database');
  }

  static Database database = Database();

  factory Database.get(){
    return database;
  }

  /*factory Database.login(){
    return Database('Jonathan', '123');
  }*/
  
}

void main(){
  print(Database.id);
  print(Database.category);
  var database1 = Database.get()
      ..username = 'Jonathan';
  var database2 = Database.get()
      ..username = 'Bill';

  print(database1.username.hashCode);
  print(database2.username.hashCode);

  var database3 = Database();
  var database4 = Database();

  print(database1 == database2); // true
  print(database3 == database4); // false

  /*var dataLogin1 = Database.login();
  var dataLogin2 = Database.login();*/

  // print(dataLogin1 == dataLogin2);
}
