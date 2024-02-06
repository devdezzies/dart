import 'dart:mirrors';

abstract class CategoryRepository { // the only methods that can be used in the noSuchMethod
  void id(String id);
  void name(String name);
  void quantity(int quantity);
}

class Repository extends CategoryRepository {
  final String _name;

  Repository(this._name);

  @override
  dynamic noSuchMethod(Invocation invocation){
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = 'select * from $_name where $column = $value';
    print(sql);
  }
}