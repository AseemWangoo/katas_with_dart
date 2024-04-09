import 'dart:collection';
import 'dart:math' as Math;

class XX {
  TreeNode? invertTree(TreeNode? root) {
    if (root == null) {
      return root;
    }

    if (root.left == null && root.right == null) {
      return root;
    }

    TreeNode? curr = root;
    TreeNode? head = root;
    Queue queue = Queue();
    queue.add(curr);

    while (queue.isNotEmpty) {
      curr = queue.removeLast();

      var temp = curr?.left;
      curr?.left = curr.right;
      curr?.right = temp;

      if (curr?.left != null) {
        queue.add(curr?.left);
      }

      if (curr?.right != null) {
        queue.add(curr?.right);
      }
    }

    return head;
  }
}

void main() {
  TreeNode root = TreeNode(1);
  TreeNode right = TreeNode(2);
  TreeNode rLeft = TreeNode(3);

  root.left = right;
  root.right = rLeft;

  final sum = XX();
  final op = sum.invertTree(root);
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
