void main(){
  List<String> names = ['Johny', 'Edison', 'Dior'];
  final iterator = names.iterator; // it's an instance of ListIterator<String>

  for (var e in names){
    print(e);
  }

  // Using manual method

  while (iterator.moveNext()){
    print(iterator.current);
  }
}