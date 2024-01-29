class Solution {
  int duplicateCount(String text) {
    List<String> duplicates = [];
    List<String> param = text.toLowerCase().split('');
    while (param.isNotEmpty) {
      var temp = param[0];
      param.remove(param[0]);
      if (param.contains(temp) && !duplicates.contains(temp))
        duplicates.add(temp);
    }
    return duplicates.length;
  }
}

void main() {
  var sol = Solution();
  print(sol.duplicateCount('ABBAlsiubefuawhbefyuscfiuygasuyfegasuygefaiuvseafyufweu'));
  print(sol.duplicateCount('AAAAaaabbcce'));
}

