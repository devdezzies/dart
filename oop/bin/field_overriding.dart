class Manager {

  String name = 'Marcus';

  void sayHello(String name){
    print("Hello $name my name is Manager ${this.name}");
  }

}

class VicePresident extends Manager {
  @override
  String name = 'Mark';
  
}

class CLevel extends Manager {
  @override
  String name = 'March'; 

}

// not really useful though

void main(){
  var manager1 = Manager();
  print(manager1.name);

  var vicePresident1 = VicePresident();
  print(vicePresident1.name);
}
