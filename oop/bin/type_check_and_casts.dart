class Manager {
  String name;

  Manager(this.name);
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name);
}

class CLevel extends Manager {
  CLevel(String name) : super(name);
}

void sayHello(Manager manager) {
  if (manager is VicePresident) {
    VicePresident vicePresident = manager as VicePresident;
    print('Hello Vice President ${vicePresident.name}');
  } else if (manager is CLevel) {
    CLevel cLevel = manager as CLevel;
    print('Hello C Level ${cLevel.name}');
  } else {
    print('Hello ${manager.name}');
  }
}

void main(){
  sayHello(VicePresident('Jonathan'));
  sayHello(CLevel('Emma'));
  sayHello(Manager('Volkihar'));
}