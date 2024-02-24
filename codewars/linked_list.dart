import 'dart:collection';

class Testing<T> {
  T name;

  Testing(this.name);

  @override
  String toString() {
    return "this is : $name";
  }
}

base class StringEntry extends LinkedListEntry<StringEntry> {
  String name;

  StringEntry(this.name);

  @override
  String toString() {
    return name;
  }
}

void main() {
  var list = LinkedList<StringEntry>();
  list.addAll(
      [StringEntry('Jonah'), StringEntry('Johs'), StringEntry('Grobe')]);
  print(list);

  print(Testing<StringEntry>(StringEntry('Jonah')));
}
