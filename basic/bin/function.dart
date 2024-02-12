void sayHello(){
  print('Hello');
}

void addNumber(int num, String kata){ // function with parameter
  int total = 0; 
  for (var i = 1; i <= num; i++){
    total = total + i;
  } 
  print('$kata $total');
}

void substraction(int x, [String? y]){
  String substitute = y ?? 'real';
  print('$x adalah bilangan $substitute');
}

void sayMyName(String firstName, [String? midName, String lastName = 'default']){
  print('$firstName $midName $lastName');
}

void namedParameter({required String first, String? mid, String? last = 'lastName'}){
  print('$first $mid $last');
}


void main(){
  sayHello();

  addNumber(1001, 'ini nilainya');
  substraction(7, 'prime');
  substraction(8);
  sayMyName('The', 'Great', 'Khaled');
  sayMyName('OneWord');
  sayMyName('First', 'Middle');

  namedParameter(first: 'John', last: 'Keen', mid: 'Zee');
  namedParameter(first: 'Pagani', mid: 'Huayra');
  // namedParameter(mid: 'Pagani', last: 'notlast');
}
