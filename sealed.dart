void main() {
  Circle circle = Circle();
  Square square = Square();

  double circleArea = shapeHandler(circle);
  double squareArea = shapeHandler(square);

  print("Circle area: $circleArea");
  print("Square area: $squareArea");
}

sealed class Shape {
  double area();
}

class Circle implements Shape {
  

  @override
  double area() {
    return 1;
  }
}

class Square implements Shape {
  @override
  double area() {
    return 2;
  }
}

double shapeHandler(Shape shape) => switch (shape) {
      Circle() => 1,
      Square() => 2,
    };


//* examples: 
//* https://medium.com/@aliammariraq/sealed-classes-in-flutter-unlocking-powerful-features-b73ab5838ca0