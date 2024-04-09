import 'dart:math' as Math;

class XX {
  bool wordPattern(String pattern, String s) {
    List<String> sArr = s.split(" ");

    if (pattern.length != sArr.length) {
      return false;
    }

    Map<String, String> map = {};

    for (var i = 0; i < pattern.length; i++) {
      var val = pattern[i];

      if (map.containsKey(val)) {
        if (map[val] != sArr[i]) {
          return false;
        }
      } else {
        if (map.containsValue(sArr[i])) {
          return false;
        } else {
          map[val] = sArr[i];
        }
      }
    }

    return true;
  }
}

void main() {
  final sum = XX();
  final op = sum.wordPattern("abbc", "dog cat cat dog");
  print(op);
}
