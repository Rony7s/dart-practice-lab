import 'dart:core';

void main() {
  final String name = "Rony Ahmmed";
  const String myName = "Md. Rony Ahmmed Shah";

  print("My name is $name and Full name is: $myName");
  final double gavety = 9.81; //runtime will be fixed then no change
  const double piValue = 3.1415; //compile time will be fixed then no change

  print("$gavety and $piValue");
}
