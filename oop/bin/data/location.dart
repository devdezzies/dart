abstract class Location { // can't be called, unless it's its children object
  String cityName;
  String preciseLocation(String city) {
    return city.toUpperCase();
  }

  Location(this.cityName);
}

class City extends Location {
  City(String cityName) : super(cityName);
}
