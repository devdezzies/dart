void permutation(x, y) {
  int factorial(int x) {
    if (x == 0) {
      return 1;
    } else {
      return x * factorial(x-1);
    }
  }
  double last = 0;
  int xfact = factorial(x);
  int yfact = factorial(y);
  if (x >= y){
    last = xfact / factorial(x-y);
  } else {
    last = yfact / factorial(y-x);
  }
  print(xfact);
  print(yfact);
  print(last);
}

void main(){
  permutation(1, 7);
  permutation(2, 4);
}