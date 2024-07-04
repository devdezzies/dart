class Human {
  String name; 
  int age; 

  Human(this.name, this.age);
}

void main() {
  final human = Human("Jonathan", 19);
  final Human(:age) = human; 
  print(age);

  final Human(age:agee, name:namee) = human;
  print(agee);
  print(namee);
}