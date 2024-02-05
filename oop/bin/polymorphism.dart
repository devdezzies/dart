class Manager {
  String name;

  Manager(this.name);
}

class CLevel extends Manager {
  CLevel(String name) : super(name);
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name);
}

void main(){
  Manager manager = Manager('John');
  print(manager);

  manager = CLevel('Cassey');
  print(manager);

  manager = VicePresident('Henry');
  print(manager);
}