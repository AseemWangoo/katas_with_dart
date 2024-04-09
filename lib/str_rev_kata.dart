class StringReverse {
  String reverseString(String str) {
    if (str.isEmpty) {
      return str;
    }

    if (str.length == 1) {
      return str;
    }

    int j = str.length - 1;

    String resp = '';

    while (j >= 0) {
      resp = resp + str[j];
      j--;
    }

    return resp;
  }
}
