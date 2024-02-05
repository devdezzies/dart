abstract class Car { // it's recommended when making an interface, the class should be declared as an abstract class
  String brandName = '';

  String getName();

  int getCarSpeed(){
    return 100;
  }
}

abstract class Engine {
  String engineName = '';
  void printBrandName();
}

class Ferrari implements Car, Engine {
  String brandName = 'Ferrari';
  String engineName = 'V8';

  String getName() => brandName;

  int getCarSpeed(){
    return 100000;
  }

  void printBrandName() => print(brandName);
}

void main(){
  var newCar = Ferrari();
  print(newCar.brandName);
  print(newCar.engineName);

  newCar.getName();
  print(newCar.getCarSpeed());
}

