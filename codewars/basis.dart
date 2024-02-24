String inLoop(String a){
  for(var i = 0; i <= 5; i++){
    print(a);
  }
  return '0';
}

void main(){
  /*for (var i = 0; i <= 100; i++){
    print(i.toRadixString(5).padLeft(10, '0'));
  }*/
  print(inLoop('ab'));
}