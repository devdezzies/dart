import 'package:test/test.dart';

var data = '';

void main(){
  setUp(() { // this function will be executed before the unit test is executed (applies on each unit test)
    // when it's placed inside a group, then the setup will only apply for unit test inside that group
    data = 'Johny';
    print('setup is done with data : $data');
  });

  tearDown(() { // unlike the setup, this function will be executed after the unit test ends (applies on each unit test)
    print('test has ended with data : $data');
  });

  group('Test string', () {
    test('string first', (){
      data = '$data Cameron';
      expect(data, startsWith('Johny'));
    });

    test('ends with', (){
      data = '$data Cameron';
      expect(data, endsWith('Cameron'));
    });
  });
}