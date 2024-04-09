import 'package:dart_test/vowel_kata.dart';
import 'package:test/test.dart';

@TestOn('vm')
void main() {
  setUp(() => null);

  tearDown(() => null);

  group('Testing XXX', () {
    test('test', () {
      VowelChecker vowelChecker = VowelChecker();

      expect(vowelChecker.countVowels(""), 0);
      expect(vowelChecker.countVowels("hello"), 2);
      expect(vowelChecker.countVowels("programming"), 3);
      expect(vowelChecker.countVowels("qwerty"), 1);
    });
  });
}
