void main(){
  var names = <String>{'john'};

  Set<int> people = {1,2,3,4,5};

  print(names);
  print(people);

  names.add('wick');
  names.add('forthes');
  names.add('bin');
  names.add('john');  // duplicate data will be ignored

  print(names);
  print(names.length);

  names.remove('forthes');

  print(names);
  print(people.length);
}
