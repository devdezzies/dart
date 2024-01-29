class Person{
    
  String name = "Guest";
  String address = "Baker St";
  int? stNumber;

  Person(this.name, this.address, [this.stNumber = 1]); // don't need a constructor body anymore

}

void main(){
  var person = Person('not Guest', 'not Baker St');
  var newPerson = Person('Bateman', 'Nullable St', 5);
  print('${person.name} and ${person.address} in ${person.stNumber}');
  print('${newPerson.name} and ${newPerson.address} in ${newPerson.stNumber}');
}

