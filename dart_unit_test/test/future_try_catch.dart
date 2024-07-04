Future<String> hello() {
  return Future.error(Exception("Ups"));
}

Future<String> name(String name) {
  return Future.value("Hello $name");
}

void main() {
  hello()
    .then((value) => print(value)) // TRY
    .catchError((onError) => print("error with message ${onError.message}")) // CATCH
    .whenComplete(() => print("all future process is done")); // FINALLY

  name("Eko")
    .then((value) => print(value))
    .catchError((err) => print("error with message: ${err.message}"))
    .whenComplete(() => print("all done"));
}