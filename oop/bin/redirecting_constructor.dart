class Person {
  String? name;
  String? address;
  final String country = 'ID';

  Person(this.name, this.address){

  }

  Person.withName(String name) : this(name, 'Default Val for name cons');
  Person.withAddress(String address) : this('Default val name for add cons', address);
  // it sends the data to the default constructor
  
  Person.fromIndonesia() : this.withName('Cool Guy');
}

void main(){
  var person1 = Person.withName('Jake');
  print('${person1.name} and ${person1.address} and ${person1.country}');

  var person2 = Person.fromIndonesia();
  print('${person2.name} and ${person2.address}');

  var person3 = Person.withAddress('Baker St');
  print('${person3.name} and ${person3.address}');
}
