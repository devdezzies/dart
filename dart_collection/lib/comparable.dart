import 'dart:collection';

class Product implements Comparable<Product>{
  String name;
  String id;
  int price;

  Product(this.name, this.id, this.price);

  @override
  int compareTo(Product other) {
    // TODO: implement compareTo
    // this will make SplayTreeSet can recognize what to compare, in this case
    // we compare the instances of Product by their price
    // return other.price.compareTo(price); descending order
    return price.compareTo(other.price); // will sort from the lowest to the highest (ascending order)
  }

  // if you don't override toString method in class, when the object is called it will only return "instance of $object"
  @override
  String toString(){ // this method is by default will return the value when this instance is called
    return '$name ($price ribu Rupiah)';
  }
}

void main(){
  final productTree = SplayTreeSet<Product>();

  productTree.addAll(
    [Product('G-Shock Watch', "101", 100), Product('IPad Mini', '125', 250), Product('Tumbler', '190', 50)]
  );

  print(productTree);
}