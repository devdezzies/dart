List<String> wave(String str) {
  var arrLength = str.length;
  var counter = 0;
  var pointer = 0;
  var wave = List.from(str
      .split('')
      .map((e) => e.codeUnitAt(0) >= 97 && e.codeUnitAt(0) <= 122 ? str.split('') : '').toList());
  wave.removeWhere((element) => element == '');
  for (var e in wave){
    for (var i = 0; i < arrLength; i++) {
      if (e[i].codeUnitAt(0) <= 122 && e[i].codeUnitAt(0) >= 97 && i >= counter) {
        counter = i + 1;
        wave[pointer][i] = String.fromCharCode(e[i].codeUnitAt(0) - 32);
        break;
      }
    }
    wave[pointer] = e.join();
    pointer++;
  }
  return List.from(wave);
}

void main(){
  print(wave("a       b    ")); // ["A       b    ", "a       B    "]
  print(wave(" gap "));
  print(wave("a b     c  d     e fg hij              l mn o"));
}