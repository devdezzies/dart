import 'data/my_data.dart';

void main(){
  Data<Object> data = Data<String>('Johny');

  print(data.name); // the type will be Object

  // BUT BECAREFUL because this method can destroy the program when it's paired with a non-subtype type

  data.name = 100; // this won't throw any error since integer is also a children of Object

  print(data.name); // Program will crash!
}