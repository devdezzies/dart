class Person{ // object name
  String name = 'John'; // field
  int num = 1;
  dynamic random = 'dynamic'; 

  int addition(int x, int y){ // a Method, function inside class
    var total = 0;
    total = x + y;
    return total;
  }

  void hello(){
    print('Hello $name');
  }

  String getName(){
    return 'Hello my name is $name';
  }

  void welcome() => print('Hello world'); // method expression body
  String getUserName() => 'username: $name';
}

extension Profile on Person { // an extension to add property to an existing clas/object
  void profileData(){
    var result = addition(2, 3);
    print('Hello $result');
  }
}

void main(){
  var person = Person(); // makes the object's field can be modified
  // final person = Person(); 
  //var person1 = Person();
  // Person person2 = person.name;

  print(person.name);

  person.name = 'Khan';

  print(person.addition(1,2));

  person.hello();
  print(person.getName());

  person.welcome();
  print(person.getUserName());

  print(person.name);

  person.profileData();
  // print(person.num is int);
  // print(person.num is String);
}
