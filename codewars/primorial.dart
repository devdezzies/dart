bool isPrime(int num){
  for (var i = 2; i < num; i++){
    if (num % i == 0) return false;
  }
  return true;
}

int numPrimorial(int n) {
  List<int> primorialNums = [];
  var i = 2;
  while (primorialNums.length < n) {
    if (isPrime(i)) primorialNums.add(i);
    i++;
  }
  return primorialNums.reduce((a, b) => a * b);
}

void main(){
  print(numPrimorial(3));
  print(numPrimorial(5));
}
