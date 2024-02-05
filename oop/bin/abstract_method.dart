import 'data/animal.dart';

class AnimalCategory extends Animal {

  AnimalCategory(String animalName) : super(animalName);

  @override
  void run(){
    print('You have just created a new object $animalName');
  }
}

void main(){
  var firstAnimal = AnimalCategory('Giraffe');
  print(firstAnimal.animalName);
  firstAnimal.run();
}