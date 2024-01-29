void sayHello(String name, String Function(String) filter){
   var filteredName = filter(name);
   print('hello $filteredName');
}

String filterBadWord(String name){
    if (name == 'lunatics') {
      name = '*****';
    }
    return name;
}

void main(){
  sayHello('Eko', filterBadWord);
  sayHello('lunatics', filterBadWord);
}
