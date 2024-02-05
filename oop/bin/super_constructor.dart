class Manager {

  String? name;
  int? age;

  Manager(String name, [this.age]) {
    this.name = name + name;
    print('Hello ${this.name} and ${age ?? 25}');
  }

}

class VicePresident extends Manager {

  VicePresident(String name, [int? age]) : super(name, age);
  // a redirecting constructor can't have body, unless it redirects to a
  // parent object
  
}

void main(){

  var vpJohn = VicePresident('Jonathan')
      ..age = 26;
  var managerTom = Manager('Thomas', 26);
  print(vpJohn.age);
  print(managerTom.age);

}
