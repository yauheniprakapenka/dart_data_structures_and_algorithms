List reverseList(List list) {
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