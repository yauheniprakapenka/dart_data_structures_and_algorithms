// Challenge: Reverse a List
// Create a function that prints the contents of a list in reverse order.

// Мой вариант 1
import 'package:dart_algoritms/algoritms.dart';

List reverseListV1(List list) {
  if (list.isEmpty) return [];

  var lastIndex = list.length - 1;
  var middleIndex = list.length ~/ 2;

  for (var i = 0; i < middleIndex; i++) {
    final startValue = list[i];
    final endValue = list[lastIndex];
    list[i] = endValue;
    list[lastIndex] = startValue;
    lastIndex--;
  }

  return list;
}

// Мой вариант 2
List<T> reverseListV2<T>(List<T> elements) {
  final reversedList = <T>[];

  for (var i = elements.length - 1; i > -1; i--) {
    reversedList.add(elements[i]);
  }

  return reversedList;
}

// Ответ из книги
//
// Time complexity is O(n)
void printInReverse<E>(List<E> list) {
  var stack = Stack<E>();

  for (E value in list) {
    stack.push(value);
  }

  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}
