void main(){
  final List<String> names = []; // growable list means that the list can contain indefinite length as it's growing when it's added with a new data

  names.add('Johan');
  names.add('Harri');

  print(names); // [Johan, Harri]
  // names = []; because it's declared as a final variable, we can't reassign it but we can still change its element
  names[0] = 'Jonathan';
  print(names); // [Jonathan, Harri]
}