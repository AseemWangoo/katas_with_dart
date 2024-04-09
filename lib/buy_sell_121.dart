import 'dart:math' as Math;

class XX {
  int maxProfit(List<int> prices) {
    int i = 0, j = 1, max = 0;

    while (i < prices.length && j < prices.length) {
      int diff = prices[j] - prices[i];

      if (diff < 0) {
        i++;
        j = i + 1;
      } else {
        max = Math.max(max, diff);
        j++;
      }
    }

    return max;
  }
}

void main() {
  final input = [7, 1, 5, 3, 6, 4];

  final sum = XX();
  final op = sum.maxProfit(input);
  print(op);
}

/**
 *     |
 * [7, 1, 5, 3, 6, 4]
 *                   |
 */
