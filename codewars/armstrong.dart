class ArmstrongNumbers {
  bool isArmstrongNumber(String num) {
    BigInt sum = BigInt.zero;
    for (var i = 0; i < num.length; i++) {
      sum += BigInt.from(int.parse(num[i])).pow(num.length);
    }
    return sum == BigInt.parse(num);
  }
}

void main(){
  final armstrongNumbers = ArmstrongNumbers();
  print(BigInt.one.pow(2)); // .pow is a property of the class BigInt
  print(armstrongNumbers.isArmstrongNumber('115132219018763992565095597973971522401'));
}
