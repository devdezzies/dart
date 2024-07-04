class Diamond {
  List<String> rows(String letter) {
    List<String> char = [];
    var midPoint = ((letter.codeUnitAt(0) - 65) * 2 + 2) / 2.toInt();
    var point = 65;
    var check = 0;
    for (var start = 65;
        start <= ((letter.codeUnitAt(0) - 65) * 2 + 65);
        start++) {
      var row = '';
      var space = ' ';
      var length = 1;
      if ((letter.codeUnitAt(0) - 65) * 2 + 1 == 1) {
        char.add('A');
        break;
      } else {
        while (length <= ((letter.codeUnitAt(0) - 65) * 2 + 1)) {
          // if (check == 0 && length == midPoint){
          //   row = row + String.fromCharCode(point);
          //   break;
          // }
          if (check < ((letter.codeUnitAt(0) - 65) * 2 + 2) / 2.toInt()) {
            if ((length == midPoint - check || length == midPoint + check)) {
              row = row + String.fromCharCode(point);
            } else {
              row = row + space;
            }
          } else {
            if ((length == (check + 2) - midPoint) || (length == (((letter.codeUnitAt(0) - 65) * 2) - check) + midPoint)) {
              row = row + String.fromCharCode(point);
            } else {
              row = row + space;
            }
          }
          length++;
        }
      }

      char.add(row);
      if (point < letter.codeUnitAt(0) &&
          check < ((letter.codeUnitAt(0) - 65) * 2 + 2) / 2.toInt()) {
        point++;
      } else {
        point--;
      }
      check++;
      //midPoint++;
    }
    return char;
  }
}


void main(){
  var diamond = Diamond();
  diamond.rows("F");
  print(diamond.rows("F"));
}


