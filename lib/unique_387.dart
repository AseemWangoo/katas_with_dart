import 'dart:math' as Math;

class XX {
  int firstUniqChar(String s) {
    Map<String, int> map = {};

    for (var i = 0; i < s.length; i++) {
      var sChar = s[i];

      if (map.containsKey(sChar)) {
        map[sChar] = -1;
      } else {
        map[sChar] = i;
      }
    }

    int min = 1000000;

    for (var entry in map.entries) {
      if (entry.value != -1) {
        min = Math.min(entry.value, min);
      }
    }

    return min == 1000000 ? -1 : min;
  }
}

void main() {
  final sum = XX();
  final op = sum.firstUniqChar("loveleetcode");
  print(op);
}
