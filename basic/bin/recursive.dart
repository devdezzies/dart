void main(){
  int factorial(int n){
    var i = 1;
    var total = 1;
    for (var num = i; num <= n; num++){
      total = total * num;
    }
    return total;
  }

  int fact(int x){
   if (x == 1) {
      return 1;
   } else {
      print('perulangan ke-$x');
      return x * fact(x-1);
   }
  }

  print(factorial(5));
  print(fact(5));
  print(fact(100000));
}
