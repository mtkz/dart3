//? Dart 3, Flutter's most popular programming language,
//? gets a fantastic new feature in version Flutter 3.10.
//? The elimination of non-null-safe code in Dart 3 ensures a
//? completely secure and error-free experience in this 100% safe
//? language and eliminates a common hazard of nullable languages.

//! Class declarations without the mixin class modifier can no longer be applied as mixins.
//! It is now a compile time error if a colon (:) is used as the separator before the default value of an optional named parameter. Use an equal sign (=) instead.
//! It is now a compile-time error if a continue statement targets a label that is not attached to a loop statement (for, do, and while) or a switch member.

class Test {
  final String? name;

  Test({this.name = 'test'});
}


//* examples:
//* https://dart.dev/guides/language/evolution
