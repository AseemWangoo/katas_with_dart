class MyStack {
  final int _size;

  MyStack(this._size);

  final _list = [];

  bool get isFull => _list.length == _size;

  int push(int element) {
    if (_list.length < _size) {
      _list.add(element);
      return element;
    }

    throw Exception();
  }

  bool get isEmpty => _list.isEmpty;

  int get top => _list.last;

  void get pop {
    if (_list.isEmpty) {
      throw Exception();
    }

    _list.removeLast();
  }
}
