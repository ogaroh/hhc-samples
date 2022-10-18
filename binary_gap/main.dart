void main() {
  int number = 529;
  print(binaryGap(number));
}

// identify binary gap
int binaryGap(int decimalNumber) {
  bool foundOne = false;
  int maximumBinaryGap = 0;
  int zeroCounter = 0;

  while (decimalNumber != 0) {
    if (decimalNumber % 2 != 0) {
      foundOne = true;
      zeroCounter = 0;
    } else if (foundOne) {
      zeroCounter++;
      if (zeroCounter > maximumBinaryGap) {
        maximumBinaryGap = zeroCounter;
      }
    }
    decimalNumber = (decimalNumber / 2).truncate();
  }
  return maximumBinaryGap;
}
