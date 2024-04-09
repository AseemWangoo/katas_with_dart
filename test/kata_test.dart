import 'package:dart_test/kata.dart';
import 'package:test/test.dart';

@Tags(['sds'])
void main() {
  group('Test group for Kata Class', () {
    test('Fizzbuzz test', () {
      Kata kata = Kata();

      expect(kata.action(-1), "-1");
      expect(kata.action(0), "0");
      expect(kata.action(1), "1");
      expect(kata.action(2), "2");
      expect(kata.action(3), "Fizz");
      expect(kata.action(4), "4");
      expect(kata.action(5), "Buzz");
      expect(kata.action(3 * 5), "FizzBuzz");
    });
  });
}
