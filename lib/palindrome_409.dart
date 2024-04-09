import 'dart:math' as Math;

class XX {
  int longestPalindrome(String s) {
    if (s.isEmpty) {
      return 0;
    }

    if (s.length == 1) {
      return 1;
    }

    Map<String, int> map = {};

    for (var i = 0; i < s.length; i++) {
      String val = s[i];

      if (map.containsKey(val)) {
        map[val] = map[val]! + 1;
      } else {
        map[val] = 1;
      }
    }

    int maxLen = 0;
    bool oddTaken = false;

    for (var entry in map.entries) {
      if (entry.value % 2 == 0) {
        maxLen = maxLen + entry.value;
      } else {
        maxLen = maxLen + (entry.value - 1);
        oddTaken = true;
      }
    }

    if (oddTaken) {
      maxLen++;
    }

    return maxLen;
  }
}

void main() {
  final sum = XX();
  final op = sum.longestPalindrome("bananas");
  print(op);
}
