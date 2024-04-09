import 'dart:math' as Math;

class XX {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    if (nums1.length > nums2.length) {
      return intersect(nums2, nums1);
    }

    List<int> resp = [];
    Map<int, int> map = {};

    for (var i = 0; i < nums1.length; i++) {
      if (map.containsKey(nums1[i])) {
        map[nums1[i]] = map[nums1[i]]! + 1;
      } else {
        map.putIfAbsent(nums1[i], () => 1);
      }
    }

    for (var i = 0; i < nums2.length; i++) {
      if (map.containsKey(nums2[i]) && map[nums2[i]]! != 0) {
        int val = map[nums2[i]]!;

        map.update(nums2[i], (value) => val = val - 1);
        resp.add(nums2[i]);
      }
    }

    return resp;
  }
}

void main() {
  final input = [-2, 1, -3, 4, -1, 2, 1, -5, 4];

  final sum = XX();
  final op = sum.intersect([1, 2, 2, 1], [2, 2]);
  print(op);
}
