import 'package:dart_test/sample_kata.dart';
import 'package:test/test.dart';

@TestOn('vm')
void main() {
  group('sds', () {
    StringCalc stringCalc = StringCalc();

    test('dsd', () {
      expect(stringCalc.add("1"), 1);

      expect(stringCalc.add("1,2"), 3);
      expect(stringCalc.add("3,5,8"), 16);

      expect(() => stringCalc.add("1,2"), returnsNormally);
    });

    test('exc', () {
      expect(() => stringCalc.add("1,2,abc"), throwsException);
      expect(() => stringCalc.add("-1,4"), throwsA(isA<Exception>()));

      expect(() => stringCalc.add(""), throwsA(isA<ArgumentError>()));
      expect(() => stringCalc.add(""), throwsA(TypeMatcher<ArgumentError>()));
    });

    test('sds', () {
      expect('1', '1');
      expect(() => 1, '1');
      expect(() => 1, throwsException);
      expect(() => 2, throwsA(isA<Exception>()));
      expect(() => 2, throwsA(TypeMatcher<ArgumentError>()));
    });
  });
}
