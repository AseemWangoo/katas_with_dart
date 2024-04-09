import 'dart:math' as Math;

class XX {
  int maxSubArray(List<int> nums) {
    if (nums.length == 1) {
      return 1;
    }

    int index = 1;

    for (var i = 0; i < nums.length - 1; i++) {
      if (nums[i] != nums[i + 1]) {
        nums[index] = nums[i + 1];
        index++;
      }
    }

    return index;
  }
}

void main() {
  final input = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];

  final sum = XX();
  final op = sum.maxSubArray(input);
  print(op);
}
