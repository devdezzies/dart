import 'package:test/test.dart';

String sayHello(String name) => "Hello $name";

int sum(int a, int b){
  return a + b;
}


void main(){
  test('sayHello test with matcher', (){
    expect(sayHello('Dart'), startsWith('Hello'));
    expect(sayHello('Dart'), endsWith('Dart'));
    expect(sayHello('Dart'), equalsIgnoringCase('hello dart'));
    expect(sayHello('Dart'), isA<String>());
  });

  test('sum test', (){
    expect(sum(1, 2), equals(3));
    expect(sum(1,2), greaterThan(2));
    expect(sum(1,2), lessThan(5));
  });


}