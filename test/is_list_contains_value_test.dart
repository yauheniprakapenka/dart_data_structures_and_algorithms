import 'package:dart_algoritms/algoritms.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  const _numbers = [1, 3, 56, 64, 68, 80, 99, 105, 450];

  group('Is list contain value', () {
    test('list contains value at the beggining', () {
      final actual = isListContainsValue(1, _numbers);
      expect(actual, true);
    });

    test('list contains value in the end', () {
      final actual = isListContainsValue(450, _numbers);
      expect(actual, true);
    });

    test('list contains value in the middle', () {
      final actual = isListContainsValue(68, _numbers);
      expect(actual, true);
    });

    test('list contains value in the middle - 1', () {
      final actual = isListContainsValue(64, _numbers);
      expect(actual, true);
    });

    test('list contains value in the middle + 1', () {
      final actual = isListContainsValue(80, _numbers);
      expect(actual, true);
    });

    test('list not contains value which is less than the smallest value', () {
      final actual = isListContainsValue(0, _numbers);
      expect(actual, false);
    });

    test('list not contains value which is more than the biggest value', () {
      final actual = isListContainsValue(451, _numbers);
      expect(actual, false);
    });
  });
}
