import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:dart_algoritms/algoritms.dart';

void main() {
  group('Stack', () {
    test('Push element', () {
      final stack = Stack<int>();
      stack.push(1);
      stack.push(2);
      stack.push(3);
      expect(stack.peek, 3);
    });

    test('Pop element', () {
      final stack = Stack<int>();
      stack.push(1);
      stack.push(2);
      stack.push(3);
      stack.pop();
      expect(stack.peek, 2);
    });

    test('Stack is empty', () {
      final stack = Stack<int>();
      expect(stack.isEmpty, true);
    });

    test('Stack is not empty', () {
      final stack = Stack<int>();
      stack.push(1);
      expect(stack.isNotEmpty, true);
    });

    test('Stack of elements', () {
      const elements = ['t', 'o', 'k', 'i', 'o'];
      final stack = Stack.of(elements);
      expect(stack.peek, 'o');
    });
  });
}
