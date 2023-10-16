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
