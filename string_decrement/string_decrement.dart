import 'dart:developer';

void main() {
  String _string = "FooBar";
  int n = 2;
  fn(_string, n);
}

fn(String inputString, int iterations) {
  try {
    if (iterations <= inputString.length) {
      String output = '';
      for (var i = iterations; i > 0; i--) {
        output = "$output${inputString.substring(0, iterations)}";
        iterations -= 1;
      }
      print(output);
    } else {
      throw ('Value $iterations is larger than the length of the string specified.');
    }
  } catch (e) {
    print(e.toString());
  }
}
