class User {
  String? username, name, email;
}


void main() {
  var user1 = User();
  // Interacting with the object's fields manually
  user1.username = 'Dartmatter';
  user1.name = 'Cassandra';
  user1.email = 'cassd@matter.com';

  print('${user1.username} ${user1.name} ${user1.email}');

  // Using Cascade Notation to interact with the fields
  var user2 = User()
    ..username = 'DeppThePirate'
    ..name = 'Depp'
    ..email = 'thedeppwater@land.com';

  print('${user2.username} ${user2.name} ${user2.email}');

  
}

