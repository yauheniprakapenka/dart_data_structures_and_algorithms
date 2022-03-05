bool isListContainsValue(int value, List<int> list) {
  if (list.isEmpty) return false;
  final middleIndex = list.length ~/ 2;

  if (value > list[middleIndex]) {
    for (var i = middleIndex; i < list.length; i++) {
      if (value == list[i]) return true;
    }
  } else {
    for (var i = middleIndex; i >= 0; i--) {
      if (value == list[i]) return true;
    }
  }

  return false;
}
