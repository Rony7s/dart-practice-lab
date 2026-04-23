//Rony Ahmmed EdTE-UFTB
void checkAge(int age) {
  if (age < 13) {
    print("Child");
  } else if (age < 20) {
    print("Teenager");
  } else if (age < 60) {
    print("Adult");
  } else {
    print("Senior");
  }
}

void EvenOdd(int num) {
  if (num % 2 == 0) {
    print("$num is Even!");
  } else {
    print("$num is Odd!");
  }
}

void main() {
  checkAge(22);
  EvenOdd(101);
  EvenOdd(100);
}
