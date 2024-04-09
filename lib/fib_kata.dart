class Fibonacci {
  List<int> generateFibonacci(int num) {
    if (num == 1) {
      return [0];
    }

    List<int> list = [0, 1];
    if (num == 2) {
      return list;
    }

    int i = 1;

    while (i < num - 1) {
      list.add(list[i] + list[i - 1]);
      i++;
    }

    //i:3
    //num:4
    // [0,1,1,2]

    return list;
  }
}
