import 'data/category.dart';

typedef AliasName = Category;

typedef Filter = String Function(String); // it also can be used for function or method, but it's not recommended for functions

void sayHello(String name, Filter filter){
  print('Hello user, are you? ${filter(name)}');
}

void main(){
  var category = AliasName('Pagani Huayra', '10321');
  print(category.name);
  print(category.id);

  sayHello("jonathan", (name) => name.toUpperCase());
}


