List<String>? DiagonalsOfSquare(List<String>? array) {
  if (array == null) return null;
  List<String> arr = List.from(array);
  arr.sort((a, b) => a[0].codeUnitAt(0).compareTo(b[0].codeUnitAt(0)));
  List<String>? res = [];
  for (var i = 0; i < arr.length; i++) {
    var temp = '';
    var temporary = arr[0];
    for (var i = 0; i < arr.length; i++) {
      temp += arr[i][i];
    }
    arr.remove(arr[0]);
    arr.add(temporary);
    res.add(temp);
  }
  return res;
}

void main() {
  print(DiagonalsOfSquare(
      ["abcd", "kata", "1234", "qwer"])); // ["aae4","kw3d","1btr","q2ca"]
  print(DiagonalsOfSquare(["xyz", "abc", "xyz"])); // ["xyc", "ayz", "xbz"]
}
