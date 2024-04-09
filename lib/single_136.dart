import 'dart:math' as Math;

class XX {
  int singleNumber(List<int> nums) {
    if (nums.length == 1) {
      return nums[0];
    }

    Set<int> set = {};

    for (var i = 0; i < nums.length; i++) {
      int val = nums[i];

      if (!set.contains(val)) {
        set.add(val);
      } else {
        set.remove(val);
      }
    }

    return set.isEmpty ? 0 : set.first;
  }
}

void main() {
  final input = [4, 1, 2, 1, 2];

  final sum = XX();
  final op = sum.singleNumber(input);
  print(op);
}
