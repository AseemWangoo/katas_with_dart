import 'dart:math' as Math;

class XX {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode? curr1 = l1;
    ListNode? curr2 = l2;
    ListNode? dummy = ListNode(-1);
    ListNode? head = dummy;

    int sum = 0;
    int carry = 0;

    while (curr1 != null || curr2 != null) {
      if (curr1 == null) {
        sum = curr2!.val;
        curr2 = curr2.next;
      } else if (curr2 == null) {
        sum = curr1.val;
        curr1 = curr1.next;
      } else {
        sum = curr1.val + curr2.val;
        curr1 = curr1.next;
        curr2 = curr2.next;
      }

      if (carry > 0) {
        sum++;
      }

      carry = sum ~/ 10;

      if (carry > 0) {
        dummy?.next = ListNode(sum % 10);
      } else {
        dummy?.next = ListNode(sum);
      }

      dummy = dummy?.next;
    }

    // VVIP
    if (carry > 0) {
      dummy?.next = ListNode(carry);
    }

    return head.next;
  }
}

void main() {
  ListNode root = ListNode(2);
  ListNode first = ListNode(4);
  ListNode second = ListNode(3);

  root.next = first;
  first.next = second;

  ListNode root1 = ListNode(5);
  ListNode first1 = ListNode(6);
  ListNode second1 = ListNode(4);

  root1.next = first1;
  first1.next = second1;

  final sum = XX();
  final op = sum.addTwoNumbers(root, root1);

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
