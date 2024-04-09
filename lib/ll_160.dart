import 'dart:math' as Math;

class XX {
  ListNode? getIntersectionNode(ListNode? list1, ListNode? list2) {
    ListNode? head1 = list1;
    ListNode? curr1 = list1;

    ListNode? head2 = list2;
    ListNode? curr2 = list2;

    while (curr1 != curr2) {
      if (curr1 == null) {
        curr1 = head2;
      } else if (curr2 == null) {
        curr2 = head1;
      }

      curr1 = curr1?.next;
      curr2 = curr2?.next;
    }

    return null;
  }
}

void main() {
  ListNode root = ListNode(3);
  ListNode first = ListNode(2);
  ListNode second = ListNode(0);
  ListNode third = ListNode(-4);

  root.next = first;
  first.next = second;
  second.next = third;
  third.next = first;

  ListNode root1 = ListNode(1);
  ListNode first1 = ListNode(0);
  ListNode second1 = ListNode(-4);

  root1.next = first1;
  first1.next = second1;

  final sum = XX();
  final op = sum.getIntersectionNode(root, root1);

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
