import 'dart:collection';

final class StringEntry extends LinkedListEntry<StringEntry> {
  String value;

  StringEntry(this.value);

  @override
  String toString() => value;
}

void main() {
  final linkedList = LinkedList<StringEntry>();

  linkedList.add(StringEntry('Jonathan'));
  linkedList.add(StringEntry('Ma'));
  linkedList.addAll(
      [StringEntry('Nathan'), StringEntry('Norman')]
  );

  // linkedList[0] = 'Jordan'; because LinkedList doesn't have index
  print(linkedList);
  for (var entry in linkedList) {
    if (entry.value == 'Nathan') entry.value = 'Jack'; // this is we modify an element inside a linked list the time complexity is O(N)
    print(entry.value);
  }
}
