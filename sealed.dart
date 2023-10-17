//? Sealed types (another new Dart 3 feature) and enums are especially
//? useful for switches because the compiler knows their possible values
//? ahead of time, even without a default case.
//? Applying the sealed modifier to a class enables exhaustiveness
//? checking when switching over its subclasses.
//? If we add a new subclass to a sealed class,
//? the switch expression will be incomplete. Exhaustiveness checking helps flag this.

import 'dart:math';

sealed class Shape {}

class Square extends Shape {
  Square(this.length, this.width);
  final double length;
  final double width;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;
}

double calculateArea(Shape shape) => switch (shape) {
      Square(length: var l, width: var w) => l * w,
      Circle(radius: var r) => pi * r * r,
    };

void main() {
  Shape shape = Square(3, 3);
  print(calculateArea(shape));
  shape = Circle(3);
  print(calculateArea(shape));
}

//* examples:
//* https://medium.com/@aliammariraq/sealed-classes-in-flutter-unlocking-powerful-features-b73ab5838ca0
//* https://medium.com/@aliammariraq/sealed-classes-in-dart-unlocking-powerful-features-d8dba185925f
