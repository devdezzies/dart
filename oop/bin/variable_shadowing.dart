class Person{
  var user = 'Guest';
  var address = 'Baker Street';

  Person(String user, String address){
    //user = user; // the arguments won't be taken by the parameter
    //address = address;
    
    //solution for addressing variable shadowing
    
    this.user = user; // 'this' will point to an existing field in the scope
    this.address = address;
  }
}

void main(){
  var person = Person('User', 'Address');
  print('${person.user} and ${person.address}');
}
