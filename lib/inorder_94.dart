import 'dart:math' as Math;

import 'package:dart_test/stack.dart';

class XX {
  List<int> inorderTraversal(TreeNode? root) {
    if (root == null) {
      return [];
    }

    TreeNode? curr = root;
    List<int> res = [];

    Stack stack = Stack();

    while (curr != null || !stack.isEmpty()) {
      while (curr != null) {
        stack.push(curr);
        curr = curr.left;
      }

      curr = stack.pop();
      res.add(curr!.val); // 1
      curr = curr.right;
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
  final op = sum.inorderTraversal(root);
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
