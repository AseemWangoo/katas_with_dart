import 'package:dart_test/palindrome_kata.dart';
import 'package:test/test.dart';

@TestOn('vm')
void main() {
  setUp(() => null);

  tearDown(() => null);

  group('Testing XXX', () {
    test('test', () {
      PalindromeChecker palindromeChecker = PalindromeChecker();
      expect(palindromeChecker.isPalindrome(""), true);
      expect(palindromeChecker.isPalindrome("racecar"), true);
      expect(palindromeChecker.isPalindrome("hello"), false);
    });

    test('test 2', () {
      PalindromeChecker palindromeChecker = PalindromeChecker();
      expect(
        palindromeChecker.isPalindrome("A man, a plan, a canal, Panama"),
        true,
      );

      expect(palindromeChecker.isPalindrome("race, car"), true);
      expect(palindromeChecker.isPalindrome("r, ccr"), true);
    });
  });
}
