import 'dart:math' as Math;

class XX {
  bool canConstruct(String ransomNote, String magazine) {
    Map<String, int> map = {};

    for (var i = 0; i < magazine.length; i++) {
      var sChar = magazine[i];

      if (map.containsKey(sChar)) {
        map[sChar] = map[sChar]! + 1;
      } else {
        map.putIfAbsent(sChar, () => 1);
      }
    }

    for (var i = 0; i < ransomNote.length; i++) {
      var sChar = ransomNote[i];

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
  final op = sum.canConstruct("aaa", "aab");
  print(op);
}
