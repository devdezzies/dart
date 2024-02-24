List<List<int>> pyramid(int n) {
  final starting = [1];
  final list = <List<int>>[];
  for (var i = 1; i <= n; i++){
    list.add(List.from(starting));
    starting.add(1);
  }
  return list;
}

void main(){
  print(pyramid(100));
}