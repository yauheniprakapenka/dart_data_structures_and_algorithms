import 'package:dart_algoritms/src/chapter_2_complexity/sum_from_one_to.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Sum From One To', () {
    test('Sum to 1', () {
      final actual = sumFromOneTo(1);
      expect(actual, 1);
    });

    test('Sum to 3', () {
      final actual = sumFromOneTo(3);
      expect(actual, 6);
    });

    test('Sum to 5', () {
      final actual = sumFromOneTo(5);
      expect(actual, 15);
    });
  });
}
