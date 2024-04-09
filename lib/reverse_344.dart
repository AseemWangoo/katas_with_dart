import 'dart:math' as Math;

class XX {
  void reverseString(List<String> s) {
    if (s.length == 1) {
      return;
    }

    int i = 0;
    int j = s.length - 1;

    while (i <= j) {
      var temp = s[i];
      s[i] = s[j];
      s[j] = temp;

      i++;
      j--;
    }
  }
}

void main() {
  final input = [-2, 1, -3, 4, -1, 2, 1, -5, 4];

  final sum = XX();
  final op = sum.reverseString(["h", "e", "l", "l", "o"]);
}
