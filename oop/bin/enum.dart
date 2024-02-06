import 'data/customer.dart';

void main(){
  var firstCustomer = Customer("Jonathan", CustomerLevel.regular);
  var secondCustomer = Customer("Matthew", CustomerLevel.vip);

  print(firstCustomer.level);
  print(secondCustomer.level);

  print(CustomerLevel.values); // to return all the enum values in a list
}