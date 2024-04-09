import 'dart:math' as Math;

class MaxSubArray {
  int maxSubArray(List<int> nums) {
    int sum = 0;
    int maxSum = 0;

    if (nums.length == 1) {
      return nums[0];
    }

    for (int i = 0; i < nums.length; i++) {
      if (sum < 0) {
        sum = 0;
      }
      sum = sum + nums[i];

      maxSum = Math.max(maxSum, sum);
    }

    return maxSum;
  }
}

void main() {
  final input = [-2, 1, -3, 4, -1, 2, 1, -5, 4];

  final sum = MaxSubArray();
  final op = sum.maxSubArray(input);
  print(op);
}
