//? Sealed types (another new Dart 3 feature) and enums are especially
//? useful for switches because the compiler knows their possible values
//? ahead of time, even without a default case.
//? Applying the sealed modifier to a class enables exhaustiveness
//? checking when switching over its subclasses.
//? If we add a new subclass to a sealed class,
//? the switch expression will be incomplete. Exhaustiveness checking helps flag this.


//? To create a known, enumerable set of subtypes, use the sealed modifier. This allows you to create a switch over those subtypes that is statically ensured to be exhaustive.

//? In Dart 3, the keyword used to define a sealed class is sealed. Like in other programming languages, a sealed class in Dart is a class that cannot be inherited by other classes outside its declaration. This means that subclasses of the sealed class must be declared in the same file.

//? Sealed classes in Dart are often used in combination with switch expressions. The switch structure can exhaustively use the subclasses of a sealed class, ensuring that all possible cases are handled.

import 'dart:math';

// sealed class Shape {}

// class Square extends Shape {
//   Square(this.length, this.width);
//   final double length;
//   final double width;
// }

// class Circle extends Shape {
//   Circle(this.radius);
//   final double radius;
// }

// double calculateArea(Shape shape) => switch (shape) {
//       Square(length: var l, width: var w) => l * w,
//       Circle(radius: var r) => pi * r * r,
//     };

// sealed class Result {
//   final String message;

//   Result(this.message);
// }

// class Success extends Result {
//   Success() : super('Request successful');
// }

// class Error extends Result {
//   Error() : super('Request unsuccessful');
// }

// String evaluate(Result result) {
//   return switch (result) {
//     Success(message: final message) => 'Success: $message',
//     Error(message: final message) => 'Error: $message',
//   };
// }

void main() {
  // Shape shape = Square(3, 3);
  // print(calculateArea(shape));
  // shape = Circle(3);
  // print(calculateArea(shape));

  // final result = evaluate(Success());
  // print(result);
}


//* examples:
//* https://medium.com/@aliammariraq/sealed-classes-in-flutter-unlocking-powerful-features-b73ab5838ca0
//* https://medium.com/@aliammariraq/sealed-classes-in-dart-unlocking-powerful-features-d8dba185925f
