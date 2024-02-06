class Manager {

  String? name;

  void sayHello(String name){
    print("Hello ${name} my name is Manager ${this.name}");
  }

}

class VicePresident extends Manager {
  @override
  void sayHello(String name){
    print("Hello ${name} my name is VP ${this.name}");
  }

}

class CLevel extends Manager {

  void sayHello(String name){
    print("Hello ${name} my name is CLevel ${this.name}");
  }

}

void main(){
  var VPJorgenson = VicePresident()
    ..name = 'Jorgenson';
  VPJorgenson.sayHello('Cassey');

  var CLevelCassandra = CLevel()
    ..name = 'Cassandra';
  CLevelCassandra.sayHello('Erick');
}
