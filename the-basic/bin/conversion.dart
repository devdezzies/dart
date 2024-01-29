void main(){
  int angka1 = 10;
  double angka2 = 20.5;
  String text = '1000';

  double newAngka1 = angka1.toDouble();
  int newAngka2 = angka2.toInt(); // numbers after comma will be excluded
  int newText = int.parse(text);
  double newText1 = double.parse(text);

  String newAngkaStr = newAngka1.toString() + text; // concatenated

  bool thisIsTrue = true;

  var bToS = thisIsTrue.toString();

  print(newAngka1);
  print(newAngka2);
  print(newText);
  print(newText1);
  print(newAngkaStr);
  print(bToS);

}