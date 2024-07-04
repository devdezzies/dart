import 'dart:convert';
import 'package:http/http.dart' as http;

final Map<String, dynamic> user = {
  "firstName": "Jorge",
  "age": 23
};

void main() {
  var url = Uri.https('jsonplaceholder.typicode.com', 'todos');
  http.get(url)
    .then((val) => jsonDecode(val.body))
    .then((val) => val.where((e) => e["id"] == 4))
    .then((val) => print(val))
    .catchError((err) => print("error: ${err.toString()}"))
    .whenComplete(() => print("done"));

  print(user["age"]);
}
