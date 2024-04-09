import 'dart:math' as Math;

import 'package:dart_test/stack.dart';

class XX {
  List<int> preorderTraversal(TreeNode? root) {
    if (root == null) {
      return [];
    }

    TreeNode? curr = root;
    List<int> resp = [];

    Stack<TreeNode?> stack = Stack();
    stack.push(root);

    while (!stack.isEmpty()) {
      curr = stack.pop();
      resp.add(curr!.val); // 1,2,3

      if (curr.right != null) {
        stack.push(curr.right);
      }

      if (curr.left != null) {
        stack.push(curr.left);
      }
    }

    return resp;
  }
}

void main() {
  TreeNode root = TreeNode(1);
  TreeNode right = TreeNode(2);
  TreeNode rLeft = TreeNode(3);

  root.right = right;
  right.left = rLeft;

  final sum = XX();
  final op = sum.preorderTraversal(root);
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
