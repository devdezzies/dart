import 'data/location.dart';

void main() {
  var city1 = City('Jakarta');
  print(city1.cityName);
  // var city2 = Location('Jakarta');

  print(city1.preciseLocation(city1.cityName));
}
