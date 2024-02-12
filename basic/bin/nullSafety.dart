void main(){
  var name = 'John';
  String? nullableName = name;

  int? number = 1;
  //int newNumber = number; 
  int newNumber;

  print(nullableName);

  if (number != null){
    // int newNumber = number; 
    newNumber = number;  
  }

 // print(newNumber);

  // ANOTHER WAY TO DO THIS IS BY USING DEFAULT VALUE 
  
  int? nomor = null;
  int newNomor; 

  newNomor = nomor ?? 0; 
  print(newNomor);

  int? nullableNumber = 110;
  int nonNullable = nullableNumber!; // forced assignment

  print(nonNullable);

  int? intNumber;
  double? intToDouble = intNumber?.toDouble();

  print(intToDouble);

}
