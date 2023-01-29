import 'package:dart_snippets/math/generate_random_int.dart';
import 'package:test/test.dart';
import 'dart:math';

void main() {
  test(
      'generateRandomInt(max) generates number between min (inclusive) and max (exclusive)',
      () {
    List<int> integers = [];

    for (var i = 0; i < 10000; i++) {
      var newInt = generateRandomInt(max: 10);
      integers.add(newInt);
    }

    expect(integers.reduce(min), equals(0));
    expect(integers.reduce(max), equals(9));
  });

  test(
      'generateRandomInt(min, max) generates number between min (inclusive) and max (exclusive)',
      () {
    List<int> integers = [];

    for (var i = 0; i < 10000; i++) {
      var newInt = generateRandomInt(min: 5, max: 10);
      integers.add(newInt);
    }

    expect(integers.reduce(min), equals(5));
    expect(integers.reduce(max), equals(9));
  });
}
