import 'dart:math' as Math;

class XX {
  bool correctlyClosed(String str1) {
    int openLoop = 0;
    int closeLoop = 0;

    for (var i = 0; i < str1.length; i++) {
      var val = str1[i];

      if (val == '(') {
        openLoop++;
      } else {
        closeLoop++;

        if (openLoop < closeLoop) {
          return false;
        }
      }
    }

    return true;
  }
}

void main() {
  final input = [-2, 1, -3, 4, -1, 2, 1, -5, 4];

  final sum = XX();
  //)()(())
  final op = sum.correctlyClosed(")()(())");
  print(op);
}
