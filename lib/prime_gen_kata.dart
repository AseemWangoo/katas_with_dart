class PrimeNumber {
  List<int> generatePrimes(int n) {
    if (n < 2) {
      return [];
    }

    List<int> list = [];
    list.add(2);

    for (var i = 3; i < n; i++) {
      if (isPrime(i)) {
        list.add(i);
      }
    }

    return list;
  }

  bool isPrime(int n) {
    int i = 2;

    while (i < n) {
      if (n % i == 0) {
        return false;
      }

      i++;
    }

    return true;
  }
}
