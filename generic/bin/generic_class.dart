class Data<T> {
  T data;

  Data(this.data);

  T getData(){
    return data;
  }
}

void main(){
  var dataString = Data<String>('Joma'); // explicit generic argument
  var dataNumber = Data(100); // implicit generic argument
  var dataBool = Data(true);
  var dataDouble = Data(1023.23);

  print(dataString.getData()); // String
  print(dataNumber.getData()); // int
  print(dataBool.getData()); // boolean
  print(dataDouble.getData());
}