import 'dart:math' as Math;

class TwoSum {
  List<int> twoSum(List<int> nums, int target) {
    List<int> resp = [];
    Map<int, int> map = {};

    for (int i = 0; i < nums.length; i++) {
      int diff = target - nums[i];

      if (map.containsKey(diff)) {
        map.putIfAbsent(nums[i], () => i);

        resp.addAll([map[diff]!, i]);
        return resp;
      } else {
        map.putIfAbsent(nums[i], () => i); // {2,0}
      }
    }

    return resp;
  }
}

void main() {
  final input = [2, 7, 11, 15];

  final sum = TwoSum();
  final op = sum.twoSum(input, 9);
  print(op);
}
