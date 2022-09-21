void main(List<String> args) {
  int number = 6;
  nthPrime(n: number);
}

// return the nth prime number
void nthPrime({required int n}) {
  try {
    if (n < 1) {
      print("Please enter a valid integer.");
    } else {
      List<int> primeNumbers = [];

      for (var i = 0; i < double.infinity - 1; i++) {
        if (isPrime(i)) {
          primeNumbers.add(i);
        }

        if (primeNumbers.length == n) {
          break;
        }
      }

      print(primeNumbers); // list of n prime numbers
      print(primeNumbers[n - 1]); // last element of the list i.e nth prime
    }
  } catch (e) {
    print(e.toString());
  }
}

// check if number is prime
bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }

  for (var i = 2; i < n; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
