//* the switch expression in Dart 3 uses a syntax similar to arrow functions
//* to map case clauses directly to values. This makes the code more
//* concise, readable, and less prone to errors.

enum Color { red, green, blue, purple }

void main() {
  Color color = Color.green;

  //? ---------- old syntax ---------- //
  // switch (color) {
  //   case Color.red:
  //     print('The color is red.');
  //     break;
  //   case Color.green:
  //     print('The color is green.');
  //     break;
  //   case Color.blue:
  //     print('The color is blue.');
  //     break;
  //   default:
  //     print('Unknown color.');
  //     break;
  // }

  //? ---------- new syntax ---------- //
  // var selectedColor = switch (color) {
  //   Color.red => 'The color is red.',
  //   Color.green => 'The color is green.',
  //   Color.blue => 'The color is blue.',
  //   _ => 'The color is blue.'
  // };

  // print(selectedColor);
}
