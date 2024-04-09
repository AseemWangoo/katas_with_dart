import 'dart:math' as Math;

import 'package:dart_test/stack.dart';

class XX {
  bool isValid(String s) {
    if (s.length == 1) {
      return false;
    }

    Stack<String> stack = Stack();

    for (var i = 0; i < s.length; i++) {
      var sVal = s[i];

      if (sVal == '(' || sVal == '{' || sVal == '[') {
        stack.push(sVal);
      } else if (!stack.isEmpty() && stack.peek() == '{' && sVal == '}') {
        stack.pop();
      } else if (!stack.isEmpty() && stack.peek() == '(' && sVal == ')') {
        stack.pop();
      } else if (!stack.isEmpty() && stack.peek() == '[' && sVal == ']') {
        stack.pop();
      } else {
        return false;
      }
    }

    return stack.isEmpty();
  }
}

void main() {
  final sum = XX();
  final op = sum.isValid("(]");
  print(op);
}
