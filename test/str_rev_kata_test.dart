import 'package:dart_test/str_rev_kata.dart';
import 'package:test/test.dart';

@TestOn('vm')
void main() {
  setUp(() => null);

  tearDown(() => null);

  group('Testing XXX', () {
    test('test', () {
      StringReverse stringReverse = StringReverse();

      expect(stringReverse.reverseString(""), "");
      expect(stringReverse.reverseString("h"), "h");
      expect(stringReverse.reverseString("hello"), "olleh");
      expect(stringReverse.reverseString("world"), "dlrow");
      expect(stringReverse.reverseString("12345"), "54321");
    });
  });
}
