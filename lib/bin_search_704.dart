import 'dart:math' as Math;

class XX {
  int search(List<int> nums, int target) {
    if (nums.first == target) {
      return 0;
    }

    int low = 0;
    int high = nums.length - 1;

    while (low <= high) {
      int mid = (low + high) ~/ 2;

      if (nums[mid] == target) {
        return mid;
      } else if (target < nums[mid]) {
        high = mid - 1;
      } else {
        low = mid + 1;
      }
    }

    return -1;
  }
}

void main() {
  final input = [-2, 1, -3, 4, -1, 2, 1, -5, 4];

  final sum = XX();
  final op = sum.search([-1, 0, 3, 5, 9, 12], 2);
  print(op);
}
