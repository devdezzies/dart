class NumberData<T extends num> { // num is by default a parent class for integer and double, so that the data type
  // that are allowed only integer and double

  T data;

  NumberData(this.data);
}
// Setiap tipe data di Dart adalah turunan dari Object
void main(){
  var numInt = NumberData<int>(100);
  var numDouble = NumberData<double>(100.1231);
  // var numString = NumberData('Hello'); ERROR!

  print(numInt.data);
  print(numDouble.data);
}

