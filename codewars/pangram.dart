void main() {
  isPangram(String n) {
    Set<String> elements = n
        .toLowerCase()
        .split('')
        .where((a) => a.codeUnitAt(0) <= 122 && a.codeUnitAt(0) >= 97)
        .toSet();
    if (elements.length < 26) return false;
    return true;
  }

  print(isPangram('The quick, brown fox jumps over the lazy dog!'));
}
