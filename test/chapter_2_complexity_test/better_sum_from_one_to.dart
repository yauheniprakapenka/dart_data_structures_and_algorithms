import 'package:dart_algoritms/src/chapter_2_complexity/sum_from_one_to.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Better Sum From One To', () {
    test('Sum to 1', () {
      final actual = betterSumFromOneTo(1);
      expect(actual, 1);
    });

    test('Sum to 3', () {
      final actual = betterSumFromOneTo(3);
      expect(actual, 6);
    });

    test('Sum to 5', () {
      final actual = betterSumFromOneTo(5);
      expect(actual, 15);
    });
  });
}
