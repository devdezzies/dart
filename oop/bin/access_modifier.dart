import 'data/product.dart';

void main(){
  var firstProduct = Product('Milk', 10, '10921');
  print(firstProduct.amount);
  print(firstProduct.name);
  // print(firstProduct._getProductID);
  // firstProduct._productID = "10293"; can't be modified nor accessed
  // print(firstProduct._productID); can't be accessed outside the original file
}