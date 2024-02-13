void main(){

  final names1 = {"Emma", 'McKenna', 'Grace'};
  final names2 = {'Debora', 'McKenna', 'Poetri'};

  print(names1.union(names2)); // {Emma, McKenna, Grace, Debora, Poetri}
  print(names1.intersection(names2)); // {McKenna}
  print(names1.difference(names2)); // {Emma, Grace}
  print(names2.difference(names1)); // {Debora, Poetri}

}