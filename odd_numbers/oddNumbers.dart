oddNumbers(int upperLimit) {
  for (int i = 0; i <= upperLimit; i++) {
    if (i % 2 != 0) {
      print(i);
    }
  }
}

void main() {
  oddNumbers(100);
}
