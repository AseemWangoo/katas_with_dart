class Stack<T> {
  final _list = <T>[];

  bool isEmpty() => _list.isEmpty;

  T peek() => _list.last;

  void push(T val) {
    _list.add(val);
  }

  T pop() => _list.removeLast();

  @override
  String toString() => _list.toString();
}
