int num = 10;

Future<String> sayHello(String name) {
  return Future.delayed(Duration(seconds: 1), () {
    return "Hello $name";
    // throw Error();
  });
  // return Future.error(Exception("ups"));
}

void main() {
  // it'll be executed first, but asynchronously (run in the background in parallel)
  sayHello("Abdullah")
    //.onError((error, stackTrace) => "Fallback") // it transfers error -> "fallback"
    .whenComplete(() => print("done future"))
    .then((onValue) { // the return value will be assigned as "Fallback"
      print(onValue);
    })
    .catchError((err) => err.message);
  print("hello");
}