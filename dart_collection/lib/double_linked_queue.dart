import 'dart:collection';

void main(){
  final linkedQueue = DoubleLinkedQueue<String>();

  linkedQueue.addLast('Patient I');
  linkedQueue.addLast('Patient II');
  linkedQueue.addLast('Patient III');

  print(linkedQueue.removeFirst());
  print(linkedQueue.removeFirst());
  print(linkedQueue.removeFirst());
}