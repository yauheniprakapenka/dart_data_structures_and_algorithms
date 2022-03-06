import 'package:dart_algoritms/algoritms.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Node', () {
    test('Add a few nodes', () {
      final node1 = Node(value: 1);
      final node2 = Node(value: 2);
      final node3 = Node(value: 3);
      node1.next = node2;
      node2.next = node3;
      expect(node1.toString(), '1 -> 2 -> 3');
    });
  });

  group('Linked list', () {
    test('A few push to linked list', () {
      final list = LinkedList<int>();
      list.push(3);
      list.push(2);
      list.push(1);
      expect(list.toString(), '1 -> 2 -> 3');
    });

    test('Empty linked list', () {
      final list = LinkedList<int>();
      expect(list.toString(), 'Empty list');
    });

    test('A few appends to linked list', () {
      final list = LinkedList<int>();
      list.append(1);
      list.append(2);
      expect(list.toString(), '1 -> 2');
    });

    test('A few appends and push to linked list', () {
      final list = LinkedList<int>();
      list.append(1);
      list.push(2);
      list.append(3);
      list.push(4);
      expect(list.toString(), '4 -> 2 -> 1 -> 3');
    });

    test('Node in the middle index', () {
      final list = LinkedList<int>();
      list.push(4);
      list.push(3);
      list.push(2);
      list.push(1);
      var middleNode = list.nodeAt(2);
      expect(middleNode?.value, 3);
    });

    test('Node at the beginnig index', () {
      final list = LinkedList<int>();
      list.push(4);
      list.push(3);
      list.push(2);
      list.push(1);
      var middleNode = list.nodeAt(0);
      expect(middleNode?.value, 1);
    });

    test('Node at the end index', () {
      final list = LinkedList<int>();
      list.push(4);
      list.push(3);
      list.push(2);
      list.push(1);
      var middleNode = list.nodeAt(3);
      expect(middleNode?.value, 4);
    });

    test('Node at out of index', () {
      final list = LinkedList<int>();
      list.push(1);
      var middleNode = list.nodeAt(3);
      expect(middleNode?.value, null);
    });

    test('Insert after to linkded list with not empty tail', () {
      final list = LinkedList<int>();
      list.push(3);
      list.push(2);
      list.push(1);
      final middleNode = list.nodeAt(1)!;
      list.insertAfter(middleNode, 42);
      expect(list.toString(), '1 -> 2 -> 42 -> 3');
    });

    test('Insert after to empty linkded list with empty tail', () {
      final list = LinkedList<int>();
      list.push(1);
      final middleNode = list.nodeAt(0)!;
      list.insertAfter(middleNode, 42);
      expect(list.toString(), '1 -> 42');
    });

    test('Pop from not empty linked list', () {
      final list = LinkedList<int>();
      list.push(5);
      list.push(4);
      list.push(3);
      final poppedValue = list.pop();
      expect(poppedValue, 3);
    });

    test('Pop from empty linked list', () {
      final list = LinkedList<int>();
      final poppedValue = list.pop();
      expect(poppedValue, null);
    });

    test('Tail is not empty after pop with a few push to linked list', () {
      final list = LinkedList<int>();
      list.push(5);
      list.push(4);
      list.push(3);
      list.pop();
      expect(list.tail?.value, 5);
    });

    test('Tail is empty after full pop from linked list', () {
      final list = LinkedList<int>();
      list.push(4);
      list.push(3);
      list.pop();
      list.pop();
      expect(list.tail?.value, null);
    });

    test('Remove last when linked list is not empty', () {
      final list = LinkedList<int>();
      list.push(5);
      list.push(4);
      list.push(3);
      final removedValue = list.removeLast();
      expect(removedValue, 5);
    });

    test('Remove last when linked list is empty', () {
      final list = LinkedList<int>();
      final removedValue = list.removeLast();
      expect(removedValue, null);
    });

    test('Full Remove last when linked was not empty', () {
      final list = LinkedList<int>();
      list.push(4);
      list.push(3);
      list.removeLast();
      list.removeLast();
      expect(list.head, null);
      expect(list.tail, null);
    });
  });
}
