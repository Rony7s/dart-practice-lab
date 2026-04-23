import 'dart:math';

void main() {
  String shape = "Circle";
  int radius = 7;
  double r = radius.toDouble();
  double area = pi * r * r;
  double circumference = 2 * pi * r;
  double diameter = sqrt(4 * r * r); // = 2r

  print("===== $shape CALCULATOR =====");
  print("Radius        : $radius");
  print("Area          : ${area.toStringAsFixed(2)}sq");
  print("Circumference : ${circumference.toStringAsFixed(2)}m");
  print("Diameter      : ${diameter.toStringAsFixed(2)}m");
  //toStringAsFixed(2), sqrt, toInt(), toDouble(), double.parse("23.76");

  print(
    "It helps you to solve competitive programming\nExample: ${double.parse("23.76").toStringAsFixed(5)}",
  );
}
