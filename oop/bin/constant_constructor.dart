class Person {
  final int totalExpense;
  final String owner;

  const Person(this.totalExpense, this.owner);
}

void main(){
  var person1 = const Person(1000, 'John');
  print('${person1.owner} and ${person1.totalExpense}');

  var person2 = const Person(1000, 'John');
  print('${person2.owner} and ${person2.totalExpense}');
  print('${person1.owner} and ${person1.totalExpense}');
  print(person1 == person2); // if both of the objects use the exact same parameter, then it'll be recognized as a single object, 
  // unless they have different input parameter, then they would be two different objects.





}
