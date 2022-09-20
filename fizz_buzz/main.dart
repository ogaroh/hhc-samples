void main() {
  fizzBuzz();
}

void fizzBuzz() {
  for (int i = 1; i <= 100; i++) {
    i % 3 == 0 && i % 5 == 0
        ? print("FizzBuzz")
        : i % 3 == 0
            ? print("Fizz")
            : i % 5 == 0
                ? print("Buzz")
                : print(i);
  }
}
