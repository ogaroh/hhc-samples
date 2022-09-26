void main() {
  List<int> arrayTest = [1, 9, 5, 6, 7, 3];
  digitsArray(arrayTest);
}

void digitsArray(List<int> array) {
  if (array.isNotEmpty) {
    try {
      List result =
          ((int.tryParse(array.join()) ?? 0) + 1).toString().split("");
      print(result);
    } catch (error) {
      print(error.toString());
    }
  } else {
    print("Empty array!");
  }
}
