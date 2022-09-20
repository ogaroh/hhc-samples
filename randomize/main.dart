import 'dart:math';

// randomize a list of any type
List<dynamic> randomize(List<dynamic> list) {
  final Random random = Random();

  for (int i = list.length - 1; i > 0; i--) {
    int j = random.nextInt(i + 1);
    // swap the two elements using a temporary variable to hold one of the values
    dynamic tmp = list[i];
    list[i] = list[j];
    list[j] = tmp;
  }

  return list;
}

void main() {
  List<String> list = [
    "erick",
    "ogaro",
    "sibasi",
    "ltd",
    "what",
    "when",
    "where",
    "how"
  ];

  List list1 = [
    1.1,
    2,
    3,
    4.7,
    5,
    7,
    12,
    100,
    2022,
    "Test",
  ];
  print(randomize(list));
  print(randomize(list1));
}
