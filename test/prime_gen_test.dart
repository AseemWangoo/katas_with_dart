import 'package:dart_test/prime_gen_kata.dart';
import 'package:test/test.dart';

@TestOn('vm')
void main() {
  setUp(() => null);

  tearDown(() => null);

  group('Testing XXX', () {
    test('test', () {
      PrimeNumber primeNumber = PrimeNumber();

      expect(primeNumber.generatePrimes(0), []);
      expect(primeNumber.generatePrimes(1), []);
      expect(primeNumber.generatePrimes(2), [2]);

      expect(primeNumber.generatePrimes(10), [2, 3, 5, 7]);
    });
  });
}
