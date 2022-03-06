class Stack<E> {
  final List<E> _storage;

  Stack() : _storage = <E>[];

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  /// To look at the top element of the stack without mutating its contents.
  E get peek => _storage.last;

  bool get isEmpty => _storage.isEmpty;

  bool get isNotEmpty => _storage.isNotEmpty;

  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);
}
