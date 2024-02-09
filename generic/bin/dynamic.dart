import 'data/my_data.dart';

void printData(Data data){ // if the generic type parameter isn't written, then the data type turns into dynamic
  print(data.name);
}

void main(){
  printData(Data('Hello'));
  Data data2 = Data('Hello');
  print(data2.getData());
}