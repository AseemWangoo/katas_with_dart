import 'dart:math' as Math;

import 'package:dart_test/stack.dart';

class XX {
  List<int> postorderTraversal(TreeNode? root) {
    if (root == null) {
      return [];
    }

    List<int> res = [];
    TreeNode? curr = root;

    Stack stack = Stack();
    stack.push(curr);

    while (curr != null && !stack.isEmpty()) {
      curr = stack.pop(); // 2
      res.insert(0, curr!.val);

      if (curr.left != null) {
        stack.push(curr.left);
      }

      if (curr.right != null) {
        stack.push(curr.right);
      }
    }

    return res;
  }
}

void main() {
  TreeNode root = TreeNode(1);
  TreeNode right = TreeNode(2);
  TreeNode rLeft = TreeNode(3);

  root.right = right;
  right.left = rLeft;

  final sum = XX();
  final op = sum.postorderTraversal(root);
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
