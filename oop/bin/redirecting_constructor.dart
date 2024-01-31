class Person {
  String? name;
  String? address;
  String final country = 'ID';

  Person(this.name, this.address){

  }

  Person.withName(String name) : this(name, '');
  Person.withAddress(String address) : this('', address);
}

void main(){
  var person1 = Person();
}
