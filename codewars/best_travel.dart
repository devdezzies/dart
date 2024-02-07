int chooseBestSum(int t, int n, List<int> arrays) {
  if (n > arrays.length) return -1;
  List<List<int>> res = [];
  List<int> temp = [];
  List<int> sumOfDistance = [];
  
  void combinations(start, remaining) {
    if (remaining == 0) {
      res.add(List.from(temp));
    } 
    for (var i = start; i < arrays.length; i++) {
      temp.add(arrays[i]);
      combinations(i+1, remaining - 1);
      temp.removeLast();
    }
  }
  combinations(0, n);
  res.forEach((e) {
    sumOfDistance.add(e.reduce((a, b) => a + b));
  });
  sumOfDistance.sort(); 
  if (sumOfDistance[0] > t) return -1;
  sumOfDistance = sumOfDistance.where((e) => e <= t).toList();
  return sumOfDistance[sumOfDistance.length-1];
}

void main(){
  print(chooseBestSum(96, 3, [390, 166, 61, 58, 56, 224, 200, 103, 335, 215, 374]));
}
