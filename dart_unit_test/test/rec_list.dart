void main() {
  final List<String> listItems = ['human', "AI"]; 
  final idx = 1; 
  switch (listItems) {
    case ['Human' || 'human', 'AI'] when idx == 1: // it works like and
      print("yoo");
    default: 
      print("nooo");
  }
}