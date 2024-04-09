import 'dart:math' as Math;

class XX {
  int factorial(int num) {
    int fact = 1;
    int i = 1;

    while (i <= num) {
      fact = fact * i;
      i++;
    }

    return fact;
  }
}

void main() {
  final input = [-2, 1, -3, 4, -1, 2, 1, -5, 4];

  final sum = XX();
  final op = sum.factorial(10);
  print(op);
}
