import 'dart:collection';

void main(){
  final queue = Queue<String>(); // first in first out
  final exit = Queue<String>();

  final stack = Queue<String>(); // last in first out

  queue.addLast('Johny'); // 1st queue
  queue.addLast('Kahlil');// ...
  queue.addLast('Queen'); // 3rd queue

  exit.addAll(
    ['Patient V', 'Patient IV', 'Patient III', 'Patient II', 'Patient I']
  );

  print(queue);
  print(queue.removeFirst());
  print(queue);
  print(queue.removeFirst());
  print(queue);
  print(queue.removeFirst());

  while (exit.isNotEmpty){
    var person = exit.removeLast();
    print("$person has left the room");
  }

  stack.addFirst('Block I');
  stack.addFirst('Block II');
  stack.addFirst('Block III');

  while (stack.isNotEmpty){
    print(stack.removeFirst());
  }
}