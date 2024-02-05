class Order {
  var details = <String, String>{
    "buyer": '',
    "city": '',
    "country": '',
  };
  int amountOfOrder;
  String? buyer, city, country;

  Order(this.details, this.amountOfOrder)
    : buyer = details['buyer'],
      city = details["city"],
      country = details['country'] {
        print("$amountOfOrder new order(s) received!");
        print('$buyer has ordered from the city of $city, $country');
      }
      
}

void main(){
  var getName = 'John';
  var getCity = 'Kansas';
  var getCountry = 'USA';
  var firstOrder = Order(<String,String>{
      'buyer': getName,
      'city': getCity,
      'country': getCountry,
    }, 170);

  print(firstOrder.buyer);
}
