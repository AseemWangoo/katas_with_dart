import 'dart:math' as Math;

class XX {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    int m1 = m - 1;
    int n1 = n - 1;
    int k = (m + n) - 1;

    while (k >= 0) {
      if (n1 < 0) {
        nums1[k] = nums1[m1];
        m1--;
      } else if (m1 < 0) {
        nums1[k] = nums2[n1];
        n1--;
      } else {
        if (nums1[m1] < nums2[n1]) {
          nums1[k] = nums2[n1];
          n1--;
        } else {
          nums1[k] = nums1[m1];
          m1--;
        }
      }

      k--;
    }

    print(nums1);
  }
}

void main() {
  final sum = XX();
  sum.merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3);
}

/**
 *  |   
 * [1, 2, 2, 3, 5, 6]
 *  | 
 * [2, 5, 6]
 */