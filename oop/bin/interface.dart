abstract interface class Car {
  // it's an interface (acts like a contract)
  String brand = "";

  void drive() {}

  int getTier() {
    return 0;
  }
}

class BavarianMotor implements Car { // also this makes BavarianMotor a subtype of class Car
  // this object is re-declaring all of the properties that the object Car has
  String brand = 'BMW i7';

  void drive() {
    print("The car $brand is running");
  }

  int getTier() {
    return 5;
  }
}

void main() {
  var bmwCar = BavarianMotor();
  print(bmwCar.brand);
  bmwCar.drive();

  print(bmwCar is Car);
}
