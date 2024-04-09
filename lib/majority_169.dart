import 'dart:math' as Math;

class XX {
  int majorityElement(List<int> nums) {
    if (nums.length == 1) {
      return nums[0];
    }

    Map<int, int> map = {};
    int max = nums.length ~/ 2;

    for (var i = 0; i < nums.length; i++) {
      int val = nums[i];

      if (map.containsKey(val)) {
        map[val] = map[val]! + 1;

        if (map[val]! > max) {
          return val;
        }
      } else {
        map[val] = 1; // 3:1 2:1
      }
    }

    return 0;
  }
}

void main() {
  final input = [3, 2, 3];

  final sum = XX();
  final op = sum.majorityElement(input);
  print(op);
}
