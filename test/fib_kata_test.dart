import 'package:dart_test/fib_kata.dart';
import 'package:test/test.dart';

@TestOn('vm')
void main() {
  setUp(() => null);

  tearDown(() => null);

  group('Testing XXX', () {
    test('test', () {
      Fibonacci fibonacci = Fibonacci();

      expect(fibonacci.generateFibonacci(1), [0]);
      expect(fibonacci.generateFibonacci(2), [0, 1]);
      expect(fibonacci.generateFibonacci(3), [0, 1, 1]);
      expect(fibonacci.generateFibonacci(4), [0, 1, 1, 2]);
      expect(fibonacci.generateFibonacci(5), [0, 1, 1, 2, 3]);
      expect(fibonacci.generateFibonacci(8), [0, 1, 1, 2, 3, 5, 8, 13]);
    });
  });
}
