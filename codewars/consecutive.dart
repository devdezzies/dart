class Solution {
  int find(List integers) {
    List<int> odd = [];
    List<int> even = [];
    for (var num in integers) {
      if (num % 2 == 0) {
        even.add(num);
      } else {
        odd.add(num);
      }
    }
    return odd.length < even.length ? odd[0] : even[0];
  }
}

void main() {
  var sol = Solution();
  print(sol.find([160, 3, 1719, 19, 11, 13, -21]));
}
