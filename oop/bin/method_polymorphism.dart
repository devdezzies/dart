class Manager {
  String name;
  Manager(this.name);
}

class CLevel extends Manager { // inheritance of the class Manager
  CLevel(String name) : super(name);
}

class Founder {
  String name;
  Founder(this.name);
}

void sayHello(Manager manager) { // the input is an object with class name Manager
  print('Hello my name is ${manager.name}');
}

void main(){
  sayHello(Manager('Jonathan')); // because Dart supports polymorphism, then we
  // are able to input the object class Manager with its offspring
  sayHello(CLevel('Dylan'));
  // sayHello(Founder('Emma')); can't be assigned with class name Founder
  // because it doesn't inherit from the class Manager

}