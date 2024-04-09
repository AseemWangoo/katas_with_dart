class AnagramChecker {
  bool areAnagrams(String str1, String str2) {
    if (str1.isEmpty && str2.isNotEmpty) {
      return false;
    }

    if (str2.isEmpty && str1.isNotEmpty) {
      return false;
    }

    if (str1.isEmpty && str2.isEmpty) {
      return true;
    }

    Map<String, int> map = {};

    for (var i = 0; i < str1.length; i++) {
      var sChar = str1[i];

      if (sChar == " ") {
        continue;
      }

      if (map.containsKey(sChar)) {
        map[sChar] = map[sChar]! + 1;
      } else {
        map[sChar] = 1;
      }
    }

    for (var i = 0; i < str2.length; i++) {
      var sChar = str2[i];

      if (sChar == " ") {
        continue;
      }

      if (map.containsKey(sChar) && map[sChar]! > 0) {
        map[sChar] = map[sChar]! - 1;
      } else {
        return false;
      }
    }

    return true;
  }
}
