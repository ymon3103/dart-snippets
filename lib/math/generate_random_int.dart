import 'dart:math';

void main() {
  List<int> integers = [];
  for (var i = 0; i < 10000; i++) {
    var newInt = generateRandomInt(max: 4);
    integers.add(newInt);
  }
  print('${integers.length} numbers were generated');
  print('min: ${integers.reduce(min)}, max: ${integers.reduce(max)}');
}

int generateRandomInt({
  int min = 0,
  required int max,
}) {
  return Random().nextInt(max - min) + min;
}
