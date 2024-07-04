void main() {
  // ({String name, int age}) rec = (name: "Jordan", age: 17);
  // print(rec);

  final list = [1,2,3,4,5,6,7,8,9];
  final [a,b,c,d,e, ...rest] = list;
  print('$a $b $c $d $e $rest'); // 1 2 3 4 5 [6, 7, 8, 9]

  final [o, _, p, ...] = list; 
  print('$o $p'); // 1 3
}