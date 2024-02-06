import 'data/product_name.dart';
import 'data/category.dart';

void main(){
  var firstObject = ProductName("Car", "1010");
  var secondObject = ProductName("Car", "1010");

  print(firstObject.hashCode); // they'll be the same
  print(secondObject.hashCode);

  var fromCategory1 = Category("Bird", "1010");
  var fromCategory2 = Category("Bird", "1010");

  print(fromCategory2.hashCode); // they're different
  print(fromCategory1.hashCode);

  print(firstObject == secondObject); // true, because we've overridden the equals operator so it just compares the object's properties
  print(fromCategory1 == fromCategory2); // false, because we use the original operator from Object which also compares their memory location
}