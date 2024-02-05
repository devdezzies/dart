class Fruits { // Parent Class
  String? fruitName;
  int? amount;

  void fruitsCategory() {
    print('The Office has $amount $fruitName');
  }

}

class FavoriteFruits extends Fruits { // Child Class
  // inherited all the properties that the class Fruits have
  // it has the same blueprint as well as Fruits does
}

void main(){
  var fruit1 = Fruits()
    ..fruitName = 'Banana'
    ..amount = 17;
  fruit1.fruitsCategory();

  var fruitFromParent = FavoriteFruits()
    ..fruitName = 'Strawberry'
    ..amount = 10;
  fruitFromParent.fruitsCategory();
}
