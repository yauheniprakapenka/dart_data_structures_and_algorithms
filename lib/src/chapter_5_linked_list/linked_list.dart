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

  /// Removing a value at the front of a linked list.
  E? pop() {
    final value = head?.value;
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }
    return value;
  }

  /// Removing From the End of a List.
  E? removeLast() {
    /// If the list only consists of one node, [removeLast] is functionally
    /// equivalent to [pop]. Since pop will handle updating the head and tail
    /// references, you’ll just delegate this work. pop will also handle the
    /// case of an empty list.
    if (head?.next == null) return pop();

    /// You start at the beginning and keep searching the nodes until 
    /// [current.next] is tail. This signifies that current is the node right 
    /// before tail.
    var current = head;
    while (current!.next != tail) {
      current = current.next;
    }

    /// You collect the return value from the tail and after that rewire 
    /// the node before the tail to be the new tail.
    final value = tail?.value;
    tail = current;
    tail?.next = null;
    return value;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}
