class PalindromeChecker {
  bool isPalindrome(String str) {
    if (str.isEmpty) {
      return true;
    }

    str = str.toLowerCase();

    int i = 0;
    int j = str.length - 1;

    while (i <= j) {
      while (!str[i].contains(RegExp('^[a-zA-Z]+'))) {
        i++;
      }

      while (!str[j].contains(RegExp('^[a-zA-Z]+'))) {
        j--;
      }

      if (str[i] != str[j]) {
        return false;
      } else {
        i++;
        j--;
      }
    }

    return true;
  }
}
