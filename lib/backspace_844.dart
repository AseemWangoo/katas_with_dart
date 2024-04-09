import 'dart:math' as Math;

import 'package:dart_test/stack.dart';

class XX {
  bool backspaceCompare(String s, String t) {
    Stack<String> stack1 = Stack();
    Stack<String> stack2 = Stack();

    for (var i = 0; i < s.length; i++) {
      var sVal = s[i];

      if (sVal != '#') {
        stack1.push(sVal);
      } else {
        if (!stack1.isEmpty()) {
          stack1.pop();
        }
      }
    }

    for (var i = 0; i < t.length; i++) {
      var sVal = t[i];

      if (sVal != '#') {
        stack2.push(sVal);
      } else {
        if (!stack2.isEmpty()) {
          stack2.pop();
        }
      }
    }

    while (!stack1.isEmpty()) {
      var curr = stack1.pop();

      if (stack2.isEmpty() || stack2.pop() != curr) {
        return false;
      }
    }

    return stack1.isEmpty() && stack2.isEmpty();
  }
}

void main() {
  final sum = XX();
  final op = sum.backspaceCompare("y#fo##f", "y#f#o##f");
  print(op);
}
