void main() {
  final startTime = DateTime.now();
  final sum = betterSumFromOneTo(1000000000);
  final endTime = DateTime.now();
  print(sum);
  print(startTime);
  print(endTime);
}

// O(n)
//
// 2022-03-05 13:41:54.910346
// 2022-03-05 13:41:56.053690
int sumFromOneTo(int n) {
  var sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

// O(1)
//
// 2022-03-05 13:42:18.700731
// 2022-03-05 13:42:18.701008
//
// This version of the function uses a trick that Fredrick Gauss noticed in 
// elementary school. 
int betterSumFromOneTo(int n) {
  return n * (n + 1) ~/ 2;
}
