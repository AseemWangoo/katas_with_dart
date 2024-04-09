import 'package:dart_test/anagram_checker_kata.dart';
import 'package:test/test.dart';

@TestOn('vm')
void main() {
  setUp(() => null);

  tearDown(() => null);

  group('Testing XXX', () {
    test('test', () {
      AnagramChecker anagramChecker = AnagramChecker();

      expect(anagramChecker.areAnagrams("", ""), true);
      expect(anagramChecker.areAnagrams("", " "), false);
      expect(anagramChecker.areAnagrams(" ", ""), false);
      expect(anagramChecker.areAnagrams("listen", "silent"), true);
      expect(anagramChecker.areAnagrams("hello", "world"), false);
      expect(anagramChecker.areAnagrams("rail safety", "fairy tales"), true);
      expect(anagramChecker.areAnagrams("anagram", "nagaraa"), false);
    });
  });
}
