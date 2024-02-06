class Sample {
  @override
  String toString(){
    return 'Hello';
  }

  @Deprecated("Don't use this")
  void doNotUseThis(){
    print("Hey why are keep using this?!!");
  }
}

class ToDo {
  final String todo;

  const ToDo(this.todo);
}

@ToDo('Will be implemented next release')
class AnotherSample{}