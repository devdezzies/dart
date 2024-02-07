int solution(int n) {
  var total = 0;
  for (var i = 1; i < n; i++) {
    if (i % 3 == 0 || i % 5 == 0){
      total += i;
    }
  }
  return total;
}

void main(){
  print(solution(-1));
}