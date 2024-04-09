import 'dart:math' as Math;

class XX {
  List<List<int>> generate(int numRows) {
    List<List<int>> resp = [];
    resp.add([1]);

    if (numRows == 1) {
      return resp;
    }

    for (var i = 1; i < numRows; i++) {
      List<int> inner = resp.elementAt(i - 1);
      List<int> newList = [];
      newList.add(1);

      //2
      for (int j = 1; j < i; j++) {
        newList.add(inner.elementAt(j) + inner.elementAt(j - 1));
      }

      newList.add(1);
      resp.add(newList);
    }

    return resp;
  }
}

void main() {
  final sum = XX();
  final op = sum.generate(5);
  print(op);
}
