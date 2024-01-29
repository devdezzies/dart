void main(){
  var i = 1; 

  for (; i <= 100;) {
    if (i % 5 == 0 && i % 3 == 0) {
      print('FizzBuzz $i');
    } else if (i % 5 == 0) {
      print('Fizz $i');
    } else if (i % 3 == 0) {
      print('Buzz $i');
    }
    i++;
  }
}
