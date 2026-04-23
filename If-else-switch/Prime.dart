//Rony Ahmmed EdTE-UFTB

String prime(int num) {
  if (num < 2) {
    return "$num is Not prime!";
  }
  if (num == 2) {
    return "$num is prime!";
  }
  if (num % 2 == 0) {
    return "$num is prime!";
  }
  for (int i = 3; i * i <= num; i += 2) {
    if (num % i == 0) {
      return "$num is Not prime!";
    }
  }
  return "$num is prime!";
}

bool isPrime(int num) {
  if (num < 2) return false;
  if (num == 2) return true;
  if (num % 2 == 0) return false;

  for (int i = 3; i * i <= num; i += 2) {
    if (num % i == 0) return false;
  }

  return true;
}

void main() {
  int n = 11;

  if (isPrime(n)) {
    print("$n is Prime");
  } else {
    print("$n is Not Prime");
  }

  print(prime(25));
  print(prime(2));
  print(prime(29));
  print(prime(1));
}
