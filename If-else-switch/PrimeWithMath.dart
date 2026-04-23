import 'dart:math';

bool isPrime(int num) {
  if (num < 2) return false;
  if (num == 2) return true;
  if (num % 2 == 0) return false;

  int limit = sqrt(num).toInt();

  for (int i = 3; i <= limit; i += 2) {
    if (num % i == 0) return false;
  }

  return true;
}

void main() {
  for (int i = 1; i <= 20; i++) {
    if (isPrime(i)) {
      print("$i is Prime");
    } else {
      print("$i is Not Prime");
    }
  }
}
