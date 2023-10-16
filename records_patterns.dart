//* Records, a new type that lets you aggregate multiple values of different types in a single function return.
//* Patterns, a new category of grammar that lets you match and destructure values.

//* Pattern Matching

//* Pattern matching is a powerful feature that checks if a given variable
//* or object matches a specific pattern or structure.
//* It’s a prevalent feature in functional programming languages
//* like F#, Haskell, Rust, and Scala. You can use it to destructure complex data types, perform conditional execution, and write more readable and intuitive code.
//* It enhances control flow and allows programmers to write cleaner,
//* more efficient code with less error handling.

void main() {
  //? ---------- example 1 ---------- //
  // var (d, [e, f]) = ('str', [1, 'string']);

  // print(d);

  //? ---------- example 2 ---------- //
  // var numList = [1, 2, 3];
  // var [a, b, c] = numList;
  // print(a + b + c);

  //? ---------- example 3 ---------- //
  // var (h, j) = ('left', 'right');

  // // swap
  // (h, j) = (j, h);

  // print(h);

  //? ---------- example 4 ---------- //
  // ({int age, String name}) getUser() {
  //   return (age: 25, name: 'mohammad tahourian');
  // }

  // final user = getUser();

  //? ---------- example 5 ---------- //
  // final Foo myFoo = Foo(one: 'one', two: 2);

  // final Foo(:one) = myFoo;
  // print('one $one');

  //? ---------- example 5.5 ---------- //

  // final characters = [
  //   Character(name: 'Komi', gender: 'girl'),
  //   Character(name: 'Tadano', gender: 'boy'),
  //   Character(name: 'Yamai', gender: 'girl'),
  // ];

  // for (final Character(:name, :gender) in characters) {
  //   print('$name is a $gender.');
  // }

  //? ---------- example 6 ---------- //
  // List<(int, String)> list = [(1, 'mohammad'), (2, 'tahourian')];
  // print(list[0]);

  //* Dart 3 also introduces records.
  //* Put simply, functions and expressions can return more than one value at a time.
  //* We can pattern match on records. This powerful feature allows us to
  //* destructure complex data types and perform conditional execution.
  //* We can use the when keyword to specify a guard clause.
  //*  This Boolean expression must be true for the case to match.

  //? ---------- example : when : guard clause. ---------- //

  // (int a, int b) returnMulti() => (1, 4);

  // var numbers = returnMulti();
  // var dayNumber = switch (numbers) {
  //   (int a, int b) when a == 1 && b == 2 => 'One and Two',
  //   (_, _) => 'nothing',
  // };
  // print(dayNumber);

  //? ---------- example : when  ---------- //
  // void main() => runApp(
  //     MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       home: Scaffold(
  //         body: Center(
  //           child: FutureBuilder(
  //             future: Future<String>.delayed(
  //                 const Duration(seconds: 3), () => 'Hello World!'),
  //             builder: (context, snapshot) => switch (snapshot) {
  //               (AsyncSnapshot s) when s.hasData => Text(s.data!),
  //               (AsyncSnapshot s) when !s.hasError =>
  //                 const CircularProgressIndicator.adaptive(),
  //               (_) => const Text('Error'),
  //             },
  //           ),
  //         ),
  //       ),
  //     ),
  //   );

  //? ---------- example : if-case  ---------- //

  //* If-case clauses, a new conditional construct that matches a value against
  //* a pattern and executes the then or else branch,
  //* depending on whether the pattern matches.

  // final json = {
  //   'character': ['Komi', 16,123]
  // };

  // if (json case {'character': [String name, int age , int number]}) {
  //   print('$name is $age years old and number is $number.'); // Komi is 16 years old.
  // } else {
  //   throw 'corrupted JSON';
  // }
}

// class Foo {
//   final String one;
//   final int two;

//   Foo({
//     required this.one,
//     required this.two,
//   });
// }

// class Character {
//   final String name;
//   final String gender;

//   const Character({required this.name, required this.gender});
// }

//* examples:
//* https://dart.dev/language/patterns
//* https://dart.dev/language/records
