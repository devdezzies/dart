class Sum {
  int x;
  int y;

  Sum(this.x, this.y);

  int call() => x + y;
}

class CorrectMeIfImWrong {
  String text;
  String name;

  CorrectMeIfImWrong(this.text, this.name);

  void call(){
    print('${text.toLowerCase()} this is the correct text $name');
  }
}

void main(){
  var sum = Sum(1, 2);
  print(sum()); // if the object is called, then the method call will be automatically executed

  var newSum = Sum(3, 5);
  print(newSum());

  var text = CorrectMeIfImWrong("ideas don't come fully formed,", 'Jonathan');
  text();
}