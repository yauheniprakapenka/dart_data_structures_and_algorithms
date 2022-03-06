import 'package:dart_algoritms/src/chapter_4_stacks/challenge_balance_parentheses.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Is parentheses balanced', () {
    test('balanced', () {
      final actual = isParenthesesBalanced('h((e))llo(world)()');
      expect(actual, true);
    });

    test('unbalanced with one parenthe', () {
      final actual = isParenthesesBalanced('(hello world');
      expect(actual, false);
    });

    test('unbalanced with a few parentheses', () {
      final actual = isParenthesesBalanced('())(');
      expect(actual, false);
    });
  });
}
