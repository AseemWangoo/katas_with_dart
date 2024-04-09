import 'dart:math' as Math;

class XX {
  ListNode? reverseList(ListNode? head) {
    ListNode? curr = head;
    ListNode? temp = null;
    ListNode? prev = null;

    while (curr != null) {
      temp = curr.next;
      curr.next = prev;
      prev = curr;
      curr = temp;
    }

    return prev;
  }
}

void main() {
  ListNode root = ListNode(1);
  ListNode first = ListNode(2);
  ListNode second = ListNode(3);
  ListNode third = ListNode(4);
  ListNode four = ListNode(5);

  root.next = first;
  first.next = second;
  second.next = third;
  third.next = four;

  final sum = XX();
  final op = sum.reverseList(root);
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
