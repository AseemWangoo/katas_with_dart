import 'dart:math';

class DigitsSum {
  int sumOfDigits(int num) {
    if (num <= 0) {
      return num;
    }

    String str = num.toString();
    int i = str.length - 1;

    int sum = 0;
    int j = 0;

    while (i > 0) {
      int divisor = pow(10, i).toInt();
      int val = int.parse(str.substring(j, str.length));

      sum = sum + (val ~/ divisor);

      i--;
      j++;
    }

    sum = sum + int.parse(str[j]);

    return sum;
  }
}
