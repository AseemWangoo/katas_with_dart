import 'dart:math' as Math;

class XX {
  bool hasCycle(ListNode head) {
    ListNode? slow = head;
    ListNode? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;

      if (slow?.val == fast?.val) {
        return true;
      }
    }

    return false;
  }

  void iterateLL(ListNode head) {
    ListNode? curr = head;

    while (curr != null) {
      print(curr.val);
      curr = curr.next;
    }
  }
}

void main() {
  final sum = XX();

  ListNode root = ListNode(3);
  ListNode first = ListNode(2);
  ListNode second = ListNode(0);
  ListNode third = ListNode(-4);

  root.next = first;
  first.next = second;
  second.next = third;
  third.next = first;
  // sum.iterateLL(root);

  final op = sum.hasCycle(root);
  print(op);
}

class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val) {
    val = val;
    next = null;
  }
}
