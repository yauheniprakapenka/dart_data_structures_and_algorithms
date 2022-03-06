import 'package:dart_algoritms/src/chapter_4_stacks/reverse_list.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Reverse list v2', () {
    test('Empty list', () {
      final actual = reverseListV2([]);
      expect(actual, []);
    });

    test('Minimal odd', () {
      final actual = reverseListV2(['a', 'b', 'c']);
      expect(actual, ['c', 'b', 'a']);
    });

     test('Minimal even', () {
      final actual = reverseListV2(['a', 'b']);
      expect(actual, ['b', 'a']);
    });

    test('Odd', () {
      final actual = reverseListV2(['t', 'o', 'k', 'i', 'o']);
      expect(actual, ['o', 'i', 'k', 'o', 't']);
    });

    test('Even', () {
      final actual = reverseListV2(['a', 'b', 'c', 'd', 'e', 'f']);
      expect(actual, ['f', 'e', 'd', 'c', 'b', 'a']);
    });
  });
}
