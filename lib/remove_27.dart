import 'dart:math' as Math;

class XX {
  int removeElement(List<int> nums, int val) {
    if (nums.isEmpty) {
      return 0;
    }

    int index = 0;

    for (var i = 0; i < nums.length; i++) {
      if (nums[i] != val) {
        nums[index] = nums[i];
        index++;
      }
    }

    return index;
  }
}

void main() {
  final input = [-2, 1, -3, 4, -1, 2, 1, -5, 4];

  final sum = XX();
  final op = sum.removeElement([3, 2, 2, 3], 3);
  print(op);
}
