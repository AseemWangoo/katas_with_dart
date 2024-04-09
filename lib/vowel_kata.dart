class VowelChecker {
  int countVowels(String str) {
    if (str.isEmpty) {
      return 0;
    }

    int sum = 0;
    List<String> vowels = ['a', 'e', 'i', 'o', 'u'];

    for (var i = 0; i < str.length; i++) {
      if (vowels.contains(str[i])) {
        sum += 1;
      }
    }

    return sum;
  }
}
