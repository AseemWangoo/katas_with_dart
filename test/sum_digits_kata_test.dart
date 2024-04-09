import 'package:dart_test/sum_digits_kata.dart';
import 'package:test/test.dart';

@TestOn('vm')
void main() {
  setUp(() => null);

  tearDown(() => null);

  group('Testing XXX', () {
    test('test', () {
      DigitsSum digitsSum = DigitsSum();

      expect(digitsSum.sumOfDigits(1), 1);
      expect(digitsSum.sumOfDigits(0), 0);
      expect(digitsSum.sumOfDigits(-1), -1);

      expect(digitsSum.sumOfDigits(123), 6);
      expect(digitsSum.sumOfDigits(9876), 30);
      expect(digitsSum.sumOfDigits(0), 0);
    });
  });
}
