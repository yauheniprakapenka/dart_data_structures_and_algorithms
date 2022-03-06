import 'package:dart_algoritms/src/chapter_5_linked_list/node.dart';

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  /// Adds a value at the front of the list.
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  /// Adds a value at the end of the list.
  void append(E value) {
    return isEmpty ? push(value) : tail?.next = Node(value: value);
  }

  /// Retrieve a node in the list based on the given index.
  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex++;
    }

    return currentNode;
  }

  /// Adds a value after a particular node in the list.
  Node<E> insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(value);
      return tail!;
    }

    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}
