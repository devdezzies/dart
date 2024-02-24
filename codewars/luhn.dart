class Luhn {
  bool valid(String code) {
    final cardNumber = code.replaceAll(" ", "").split('');
    if (cardNumber.length <= 1) return false;
    try {
      for (var i = cardNumber.length - 2; i >= 0; i -= 2) {
        cardNumber[i] = int.parse(cardNumber[i]) * 2 > 9
            ? (int.parse(cardNumber[i]) * 2 - 9).toString()
            : (int.parse(cardNumber[i]) * 2).toString();
      }
      return cardNumber.fold(0, (prev, e) => (prev + int.parse(e))) % 10 == 0
          ? true
          : false;
    } catch (e) {
      return false;
    }
  }
}
void main() {
  final luhn = Luhn();
  print(luhn.valid(' 0'));
}
