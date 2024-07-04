void main() {
  String motivation = "this is a good day";
  motivation = motivation.capitalisedFirstLetter();
  print(motivation);
  motivation = motivation.loweredFirstLetter();
  print(motivation);
}

extension CapitaliseFirstLetter on String { // wrapping all the properties added
  String capitalisedFirstLetter() {
    return this[0].toUpperCase() + substring(1);
  }
  String loweredFirstLetter() {
    return this[0].toLowerCase() + substring(1);
  }
}