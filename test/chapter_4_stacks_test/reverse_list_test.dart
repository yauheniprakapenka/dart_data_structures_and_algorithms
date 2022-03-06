import 'package:dart_algoritms/src/chapter_4_stacks/reverse_list.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Reverse list', () {
    test('Empty list', () {
      final actual = reverseList([]);
      expect(actual, []);
    });

    test('Minimal odd', () {
      final actual = reverseList(['a', 'b', 'c']);
      expect(actual, ['c', 'b', 'a']);
    });

     test('Minimal even', () {
      final actual = reverseList(['a', 'b']);
      expect(actual, ['b', 'a']);
    });

    test('Odd', () {
      final actual = reverseList(['t', 'o', 'k', 'i', 'o']);
      expect(actual, ['o', 'i', 'k', 'o', 't']);
    });

    test('Even', () {
      final actual = reverseList(['a', 'b', 'c', 'd', 'e', 'f']);
      expect(actual, ['f', 'e', 'd', 'c', 'b', 'a']);
    });
  });
}
