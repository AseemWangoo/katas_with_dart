@TestOn('vm')

import 'package:dart_test/string_calc_kata.dart';
import 'package:test/test.dart';

void main() {
  setUp(() => null);

  tearDown(() => null);

  group('Testing String Calc', () {
    StringCalculator stringCalc = StringCalculator();
    test('dummy test', () {
      expect(stringCalc.add("1"), 1);

      expect(stringCalc.add("2"), 2);

      expect(stringCalc.add("1,2"), 3);
      expect(stringCalc.add("3,5,8"), 16);
      expect(stringCalc.add(""), 0);

      expect(() => stringCalc.add("1,2,abc"), throwsException);
      expect(() => stringCalc.add("-1,4"), throwsException);
    });

    test('throws exception when input is empty', () {
      expect(() => stringCalc.validateInput(''),
          throwsA(TypeMatcher<ArgumentError>()));
    });

    test('throws exception when input is too short', () {
      expect(() => stringCalc.validateInput('ab'),
          throwsA(TypeMatcher<FormatException>()));
    });
  });
}
