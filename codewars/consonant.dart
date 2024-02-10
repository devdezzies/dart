solve(String s) {
  var text = s.toLowerCase().split('');
  List<int> total = [];
  var temp = 0;
  for (var e in text){
    if (e == 'a' || e == 'i' || e == 'o' || e == 'u' || e == 'e') {
      total.add(temp);
      temp = 0;
      continue;
    }
    temp += e.codeUnitAt(0) - 96;
    if (s.lastIndexOf(e) == s.length-1) {
      total.add(temp);
    }
  }
  total.sort();
  return total[total.length-1];
}

void main() {
  print(solve('kzucwvemgjcnaxuegiznccvv'));
  print(solve('strength'));
  print(solve('iehaefuvbqeoybdqkosqfccxlmqv'));
}
