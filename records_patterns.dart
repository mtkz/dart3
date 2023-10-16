//* Records, a new type that lets you aggregate multiple values of different types in a single function return.
//* Patterns, a new category of grammar that lets you match and destructure values.

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

  //? ---------- example 6 ---------- //
  // List<(int, String)> list = [(1, 'mohammad'), (2, 'tahourian')];
  // print(list[0]);

  //* Dart 3 also introduces records.
  //* Put simply, functions and expressions can return more than one value at a time.
  //* We can pattern match on records. This powerful feature allows us to
  //* destructure complex data types and perform conditional execution.
  //* We can use the when keyword to specify a guard clause.
  //* This Boolean expression must be true for the case to match.

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
}

// class Foo {
//   final String one;
//   final int two;

//   Foo({
//     required this.one,
//     required this.two,
//   });
// }

//* examples:
//* https://dart.dev/language/patterns
//* https://dart.dev/language/records
