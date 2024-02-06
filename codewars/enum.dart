List<List<int>> eNum(int n){
  List<List<int>> products = [];
  List<int> temp = [];
  var element = n;

  for (var i = n; i > 0; i--){
    if (i == element) {
      temp.add(i);
      products.add(temp);
      temp = [];
      continue;
    }
    temp.add(i);
    for (var j = 1; j <= i; j++) {
      if (temp.reduce((value, element) => value + element) == n) {
        products.add(temp);
        temp = [];
        break;
      }
      temp.add(j);
      temp.add(j+1);
    }
  }
  return products;
}

void main() {
  /*int factorial(int n){
    if (n == 0) {
      return 1;
    } else {
      return n*factorial(n-1);
    }
  }
  print(factorial(10));*/
  print(eNum(4));
}

// enum(4) -> [[4],[3,1],[2,2],[2,1,1],[1,1,1,1]]