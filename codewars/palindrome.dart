void main() {
  bool isPalindrome(String n, int i) {
    if (i < n.length / 2) {
      if (n[i] == n[n.length - 1 - i]) {
        isPalindrome(n, i + 1);
      } else {
        return false;
      }
    }
    return true;
  }
  print(isPalindrome('kodok', 0));
}
