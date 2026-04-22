//bmi-console-app v1.0.0 Rony Ahmmed EdTE-UFTB
import 'dart:io';

// BMI Calculation Function
void calculateBMI() {
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Enter your height (in meters): ");
  double height = double.parse(stdin.readLineSync()!);

  stdout.write("Enter your weight (in kg): ");
  double weight = double.parse(stdin.readLineSync()!);

  double bmi = weight / (height * height);

  String status;
  if (bmi < 18.5) {
    status = "Underweight";
  } else if (bmi < 25) {
    status = "Good";
  } else if (bmi < 30) {
    status = "Better (Need Control)";
  } else {
    status = "Overweight";
  }

  print("\n--- BMI Result ---");
  print("Name   : $name");
  print("Age    : $age");
  print("BMI    : ${bmi.toStringAsFixed(2)}");
  print("Status : $status");
}

// BMI Rate Table
void showBMITable() {
  print("\n--- BMI Rate Table ---");
  print("Below 18.5   : Underweight");
  print("18.5 - 24.9  : Good");
  print("25 - 29.9    : Better (Need Control)");
  print("30 and above : Overweight");
}

// About Me
void aboutMe() {
  print("\n--- About Me ---");
  print("Name : Md. Rony Ahmmed Shah");
  print(
    "B.Sc. (Engg.) in Educational Technology and Engineering\nUniversity of Frontier Technology, Bangladesh (UFTB)",
  );
  print("Learning Dart Programming and Flutter");
}

void main() {
  while (true) {
    print("\n===== BMI APP MENU =====");
    print("1. Calculate BMI");
    print("2. BMI Rate Table");
    print("3. About Me");
    print("0. Exit");

    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        calculateBMI();
        break;

      case 2:
        showBMITable();
        break;

      case 3:
        aboutMe();
        break;

      case 0:
        print("Exiting app... Goodbye");
        return;

      default:
        print("Invalid choice! Try again.");
    }
  }
}
