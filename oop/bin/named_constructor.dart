class Profile {
  var name = 'Guest';
  String? address;

  Profile.withName([this.name = 'John Doe']);
  Profile.withAddress([this.address = 'Baker St']);
}

void main(){
  var person1 = Profile.withName();
  var person2 = Profile.withAddress();

  print('${person1.name} and ${person1.address}');
  print('${person2.name} and ${person2.address}');
}
