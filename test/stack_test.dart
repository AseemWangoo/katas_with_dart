@TestOn('vm')

import 'package:dart_test/mystack_kata.dart';
import 'package:test/test.dart';

void main() {
  setUp(() => null);

  tearDown(() => null);

  group('Testing Stack', () {
    test('ops', () {
      MyStack stack = MyStack(2);
      expect(stack.isEmpty, true);

      expect(stack.push(1), 1);
      expect(stack.push(2), 2);

      expect(stack.isFull, true);
      expect(stack.isEmpty, false);

      expect(stack.top, 2);
      // 1,2

      stack.pop;

      //1
      expect(stack.top, 1);
      stack.pop;

      expect(stack.isEmpty, true);
      expect(stack.isFull, false);
    });

    test('excced size', () {
      MyStack stack = MyStack(1);
      expect(stack.isEmpty, true);

      expect(stack.push(1), 1);

      expect(() => stack.push(2), throwsException);
      expect(stack.isFull, true);

      stack.pop;
      expect(stack.isFull, false);
      expect(stack.isEmpty, true);

      expect(() => stack.pop, throwsA(isA<Exception>()));
    });
  });
}
