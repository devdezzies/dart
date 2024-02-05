class Database {

  Database(){
    print('create a new database');
  }

  static Database database = Database();

  factory Database.get(){
    return database;
  }
  
}

void main(){
  var database1 = Database.get();
  var database2 = Database.get();

  var database3 = Database();
  var database4 = Database();

  print(database1 == database2); // true 
  print(database3 == database4); // false
}
