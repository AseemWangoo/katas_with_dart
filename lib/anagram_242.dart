import 'dart:math' as Math;

class XX {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
      return false;
    }

    Map<String, int> map = {};

    for (var i = 0; i < s.length; i++) {
      var sChar = s[i];

      if (map.containsKey(sChar)) {
        map[sChar] = map[sChar]! + 1;
      } else {
        map.putIfAbsent(sChar, () => 1);
      }
    }

    for (var i = 0; i < t.length; i++) {
      var sChar = t[i];

      if (map.containsKey(sChar) && map[sChar]! > 0) {
        map[sChar] = map[sChar]! - 1;
      } else {
        return false;
      }
    }

    return true;
  }
}

void main() {
  final sum = XX();
  final op = sum.isAnagram("anagram", "nagaraa");
  print(op);
}
