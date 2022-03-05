import 'dart:collection';

import 'package:dart_algoritms/src/chapter_2_complexity/sum_from_one_to.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final scores = {'Eric': 9, 'Mark': 12, 'Wayne': 1};
  scores['Andrew'] = 0;
  final hashMap = HashMap.of(scores);
  print(hashMap); // {Andrew: 0, Eric: 9, Wayne: 1, Mark: 12}
}
