import 'dart:math' as Math;

class XX {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode? dummy = ListNode(-1);
    ListNode? curr1 = list1;
    ListNode? curr2 = list2;

    while (curr1 != null && curr2 != null) {
      if (curr1.val < curr2.val) {
        insertNode(dummy, curr1);
        curr1 = curr1.next;
      } else {
        insertNode(dummy, curr2);
        curr2 = curr2.next;
      }
    }

    while (curr1 != null) {
      insertNode(dummy, curr1);
      curr1 = curr1.next;
    }

    while (curr2 != null) {
      insertNode(dummy, curr2);
      curr2 = curr2.next;
    }

    return dummy.next;
  }

  void insertNode(ListNode? root, ListNode? val) {
    while (root?.next != null) {
      root = root?.next;
    }

    root?.next = ListNode(val!.val);
  }
}

void main() {
  final input = [-2, 1, -3, 4, -1, 2, 1, -5, 4];

  final sum = XX();

  ListNode root = ListNode(1);
  ListNode first = ListNode(2);
  ListNode second = ListNode(4);

  root.next = first;
  first.next = second;

  ListNode root1 = ListNode(1);
  ListNode first1 = ListNode(3);
  ListNode second1 = ListNode(4);

  root1.next = first1;
  first1.next = second1;

  final op = sum.mergeTwoLists(root, root1);
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
