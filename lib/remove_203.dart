import 'dart:math' as Math;

class XX {
  ListNode? removeElements(ListNode? head, int val) {
    while (head != null && head.val == val) {
      head = head.next;
    }

    ListNode? prev = head;
    ListNode? curr = head;

    while (curr != null) {
      if (curr.val == val) {
        prev?.next = curr.next;
        curr = curr.next; //null
      } else {
        prev = curr; //5
        curr = curr.next;
      }
    }

    return head;
  }
}

void main() {
  ListNode root = ListNode(1);
  ListNode first = ListNode(2);
  ListNode second = ListNode(6);
  ListNode third = ListNode(3);
  ListNode four = ListNode(4);
  ListNode five = ListNode(5);
  ListNode six = ListNode(6);

  root.next = first;
  first.next = second;
  second.next = third;
  third.next = four;
  four.next = five;
  five.next = six;

  final sum = XX();
  final op = sum.removeElements(root, 6);
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
