import 'dart:collection';
import 'dart:math' as Math;

class XX {
  int maxDepth(TreeNode? root) {
    if (root == null) {
      return 0;
    }

    if (root.left == null && root.right == null) {
      return 1;
    }

    TreeNode? curr = root;
    Queue que = Queue();
    que.add(curr);

    int level = 0;

    while (que.isNotEmpty) {
      int size = que.length;

      for (var i = 0; i < size; i++) {
        curr = que.removeFirst();

        if (curr?.left != null) {
          que.add(curr!.left);
        }

        if (curr?.right != null) {
          que.add(curr!.right);
        }
      }

      level++;
    }

    return level;
  }
}

void main() {
  TreeNode root = TreeNode(1);
  TreeNode right = TreeNode(2);
  TreeNode rLeft = TreeNode(3);

  root.right = right;
  right.left = rLeft;

  final sum = XX();
  final op = sum.maxDepth(root);
  print(op);
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val) {
    val = val;
    left = null;
    right = null;
  }
}
