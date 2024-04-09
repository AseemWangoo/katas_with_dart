import 'package:dart_test/leap_year_kata.dart';
import 'package:test/test.dart';

@TestOn('vm')
void main() {
  setUp(() => null);

  tearDown(() => null);

  group('Testing XXX', () {
    test('test', () {
      LeapYear leapYear = LeapYear();

      expect(leapYear.isLeapYear(2020), true);
      expect(leapYear.isLeapYear(2021), false);
      expect(leapYear.isLeapYear(2000), true);
      expect(leapYear.isLeapYear(2100), false);
    });
  });
}
