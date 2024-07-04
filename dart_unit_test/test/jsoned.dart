void main() {
  final jsoned = {"userId": 1, "username": "Jordan", "age": 17};

  final jsoned2 = {
    "postId": 1,
    "id": 1,
    "name": "id labore ex et quam laborum",
    "email": "Eliseo@gardner.biz",
    "body":
        "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
  };

  print(jsoned["userId"]);
  final {'userId': userId, 'username': username, 'age': rest} = jsoned;
  print(userId);
  print(username);
  print(rest);

  try {
    if (jsoned2 case ({'postId': String postId, 'name': String name})) {
      print(name);
      print(postId);
    } else {
      throw Exception("Error: invalid JSON");
    }
  } catch (e) {
    print(e);
  }

  // if (jsoned2 case ({'postId': int postId, 'name': String name})) {
  //   print(name);
  //   print(postId);
  // } else {
  //   throw Exception("Error");
  // }
}
