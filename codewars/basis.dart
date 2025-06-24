void baseLoop(int rad, int number){
    for (var i = 0; i <= number; i++){
      print('${i} : ${i.toRadixString(rad)}');
    }
}

void main(){
  var message = "haloo".codeUnits.map((e) => e.toRadixString(2).padLeft(8, "0")).reduce((value, element) => value + element);
  var decrypted = "";

  var messageList = message.split('').toList();
  for (var i = 0; i < message.length / 8; i++){
    decrypted += String.fromCharCode(int.parse(int.parse(messageList.getRange(0, 8).join(''), radix: 2).toRadixString(10)));
    messageList.removeRange(0, 8);
  }
  print(message);
  print(decrypted);
  print("00000000000000000000000000001000".length);
}

