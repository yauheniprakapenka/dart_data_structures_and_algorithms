import 'package:dart_algoritms/algoritms.dart';

// Challenge: Balance the Parentheses
//
// Check for balanced parentheses. Given a string, check if there are ( and ) characters,
// and return true if the parentheses in the string are balanced.
//
// For example:
//
// h((e))llo(world)() // balanced parentheses
// (hello world       // unbalanced parentheses

// Мой вариант 1
bool isParenthesesBalanced(String text) {
  var leftParenthe = 0;
  var rightParenthe = 0;

  for (var i = 0; i < text.length; i++) {
    switch (text[i]) {
      case '(':
        leftParenthe++;
        break;
      case ')':
        rightParenthe++;
        break;
    }
    if (rightParenthe > leftParenthe) return false;
  }

  return leftParenthe == rightParenthe;
}

// Ответ из книги
//
// The time complexity of this algorithm is O(n), where n is the number of code units in the string.
bool checkParentheses(String text) {
  var stack = Stack<int>();

  final open = '('.codeUnitAt(0); // UTF-16 code unit 40
  final close = ')'.codeUnitAt(0); // UTF-16 code unit 41

  for (int codeUnit in text.codeUnits) {
    if (codeUnit == open) {
      stack.push(codeUnit);
    } else if (codeUnit == close) {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
      }
    }
  }

  return stack.isEmpty;
}
