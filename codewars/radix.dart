import 'dart:collection';

romanToInt (String s){
  int? total = 0;
  final roman = <String, int>{
    "M": 1000,
    "D": 500,
    "C": 100,
    "L": 50,
    "X": 10,
    "V": 5,
    "I": 1
  };
  final pack = <int?>[];
  pack.addAll(
      s.split('').map((e) => roman[e])
  );
  return pack;
}

void main(){
  print(romanToInt("MCMXCIV"));
}

