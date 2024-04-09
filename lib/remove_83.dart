import 'dart:math' as Math;

class XX {
  ListNode? deleteDuplicates(ListNode? head) {
    ListNode? curr = head;

    while (curr != null && curr.next != null) {
      while (curr.val == curr.next?.val) {
        curr.next = curr.next?.next;
      }

      curr = curr.next;
    }

    return head;
  }
}

void main() {
  ListNode root = ListNode(1);
  ListNode first = ListNode(1);
  ListNode second = ListNode(2);
  ListNode third = ListNode(3);
  ListNode four = ListNode(3);

  root.next = first;
  first.next = second;
  second.next = third;
  third.next = four;

  final sum = XX();
  final op = sum.deleteDuplicates(root);
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
