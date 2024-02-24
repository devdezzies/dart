import 'dart:math';

import 'package:test/test.dart';

int sum(int a, int b) {
  return a + b;
}

String sayMyName(String name) {
  return "Hello $name";
}

void main() {
  group('Test sum', () {
    test("positive", () {
      expect(sum(1, 2), equals(3));
      expect(sum(1, 2), isPositive);
    });
    test("negative", () {
      expect(sum(1, -5), isNegative);
    });
  });

  group('Test sayMyName', () {
    test('equivalent', () {
      expect(sayMyName('John'), equalsIgnoringCase('hello john'));
    });

    test("Starting text", () {
      expect(sayMyName('Nath'), startsWith('Hello'));
    });

    test("Ends with test", () {
      expect(sayMyName('Jonathan'), endsWith('Jonathan'));
    });
  });
}
