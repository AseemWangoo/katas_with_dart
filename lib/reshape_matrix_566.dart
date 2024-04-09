import 'dart:math' as Math;

class XX {
  List<List<int>> matrixReshape(List<List<int>> mat, int r, int c) {
    int matRowLen = mat.length;
    int matColLen = mat[0].length;

    if (matRowLen * matColLen != r * c) {
      return mat;
    }

    int r0 = 0, c0 = 0;
    List<List<int>> resp = List.generate(
      r,
      (index) => List.generate(c, (i) => 0),
    );

    for (var i = 0; i < matRowLen; i++) {
      for (var j = 0; j < matColLen; j++) {
        if (c0 == c) {
          r0++;
          c0 = 0;
        }

        resp[r0][c0] = mat[i][j]; // [0,0] : 1 [0,1] : 2 [1,0] : 3 [1,1] : 4
        c0++; // 2
      }
    }

    return resp;
  }
}

void main() {
  final sum = XX();
  final op = sum.matrixReshape(
    [
      [1, 2],
      [3, 4]
    ],
    1,
    4,
  );
  print(op);
}
