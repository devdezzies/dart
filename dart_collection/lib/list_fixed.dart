void main(){
  final names = List<String>.filled(10, 'default_value'); // we use constructor named filled to make a fixed list .filled(length, default)

  print(names);
  names[0] = 'Jonathan';
  names[1] = 'Daniel';
  names[7] = 'Northan';
  print(names);

  // names.add('Karen'); ERROR can't add new values because it exceeds its maximum space
}