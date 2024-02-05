int total = 0;

class Customer {
  String firstName = '';
  String lastName = '';
  String fullName = '';
  int nameLength = 0;

  void counter() => total++;

  Customer(this.fullName)
      : firstName = fullName.split(' ')[0],
        lastName = fullName.split(' ')[fullName.split(" ").length - 1] {
    print('initiating new data');
    counter();
    // ``print(firstName + " " + lastName);
    // constructor body
  }
}

void main() {
  print(total);

  var person = Customer('Jonathan Doe Harari');
  print('${person.firstName} ${person.lastName}');

  var person1 = Customer('Kings Grey Ryan');
  //var person2 = Customer('Bella Jade');
  print('${person1.firstName} ${person1.lastName}');
  print(total);
}
