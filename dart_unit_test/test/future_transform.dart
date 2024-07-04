Future<String> name() {
  return Future.value("Jake Norman Paul");
}

void main() {
  name() 
    .then((value) => value.split(" ")) // Future<List<String>>
    .then((value) => value.reversed) // Future<Iterable<String>>
    .then((value) => value.map((el) => el.toUpperCase())) // Future<Iterable<String>>
    .then((value) => print(value)); // (PAUL, NORMAN, JAKE)
    // it changes the data type along the process 
}