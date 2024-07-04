import 'package:test/test.dart';

var data = '';

void main(){
  setUp(() { // this function will be executed before the unit test is executed (applies on each unit test)
    data = 'Johny';
  });

  group('Test string', () {
    test('string first', (){
      data = '$data Cameron';
      expect(data, startsWith('Johny'));
      expect(data, equalsIgnoringCase('johny cameron'));
    });

    test('ends with', (){
      data = '$data Cameron';
      expect(data, endsWith('Cameron'));
    });
  });
}