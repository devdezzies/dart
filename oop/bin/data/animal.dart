abstract class Animal {
  String animalName;

  Animal(this.animalName);

  void run(); // an abstract method, it's mandatory for every child to override this method
}