class ProcessedData {
  String val;
  ProcessedData(this.val);

  Future<ProcessedData> createData() async {
    final id = await getId();
    return ProcessedData(id);
  }
}

Future<String> getId() {
  return Future.delayed(Duration(seconds: 5), () {
    return "10123124";
  });
}

void main() {
  final test = ProcessedData("1231242124"); 
  final test1 = ProcessedData("1231242124"); 
  test.createData().then((val) => print(val.val));
  test1.createData().then((val) => print(val.val));
  print(test.val);
}