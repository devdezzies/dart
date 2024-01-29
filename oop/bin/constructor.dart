class Profile{
  
  String name = 'Guest';
  String? address;
  final country = 'ID';

  Profile(String paramName, [String paramAddress = 'default']){ // a constructor - it only can be made one in every class and it behaves like a function but for object
    name = paramName;
    address = paramAddress;
  } // paramName is required when a Profile object want to be made

}

void main(){
  var profile1 = Profile('User');
  var profile2 = Profile('Jonah', 'Zurich');
  print(profile1.name);
  print(profile1.address);

  print(profile2.name);
  print(profile2.address);

}
