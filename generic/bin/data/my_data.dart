class Data<T> {
  T name;
  T? address;

  Data(this.name);

  T getData() {
    return name;
  }

  T? getAddress(){
    return address;
  }
}

class AnotherData<T> {
  T data;

  AnotherData(this.data);

  T getData(){
    return data;
  }

}

void main() {
  var dataName = Data<String>('Jonathan');
  print(dataName.getData());
  print(dataName.name);

  var secondData = Data<String>('Joma')
    ..address = 'Baker St';

  print(secondData.getData());
  print(secondData.getAddress());

  var dataString = Data<String>('John');
  var dataNumber = Data(100);
  var dataBool = Data(true);

  print(dataString.getData());
  print(dataNumber.getData());
  print(dataBool.getData());
}
