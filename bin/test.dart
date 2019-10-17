import 'main.dart';

import "package:test/test.dart";

void main() {
  test("test 1", () {
    expect(lengthen("abcdefg", "ab"), equals('ababa'));
  });

  test("test 2", () {
    expect(findBrokenKeys("beethoven", "affthoif5"), equals(['b', 'e', 'v', 'n']));
  });
}