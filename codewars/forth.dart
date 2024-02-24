import 'dart:collection';

class Forth {
  List<int> stack = [];
  evaluate(String input) {
    final queue = Queue<String>();
    queue.addAll(input.split(' '));
    try {
      while (queue.isNotEmpty) {
        switch (queue.first.toUpperCase()) {
          case '+':
            stack = <int>[stack.reduce((v, e) => v + e)];
            queue.removeFirst();
            break;
          case '-':
            stack = <int>[stack.reduce((v, e) => v - e)];
            queue.removeFirst();
            break;
          case '*':
            stack = <int>[stack.reduce((v, e) => v * e)];
            queue.removeFirst();
            break;
          case '/':
            stack = <int>[stack.reduce((v, e) => v ~/ e)];
            queue.removeFirst();
            break;
          case 'DUP':
            stack += [stack.last];
            queue.removeFirst();
            break;
          case 'DROP':
            stack.removeLast();
            queue.removeFirst();
            break;
          case 'SWAP':
            stack.add(stack.removeAt(stack.length - 2));
            break;
          case 'OVER':
            stack += [stack[stack.length - 2]];
            break;
          default:
            stack.add(int.parse(queue.removeFirst()));
        }
      }
      return stack;
    } catch (e) {
      throw Exception(['Exception: Stack empty']);
    }
  }
}

void main() {
  var forth = Forth();
  /*print(forth.evaluate(': foo 10 ;'));
  print(forth.evaluate(': foo foo 1 + ;'));
  print(forth.evaluate('foo'));*/

  print(forth.evaluate('1 2 + 4 + 7 /'));
}
