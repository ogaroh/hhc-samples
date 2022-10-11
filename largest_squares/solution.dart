import 'dart:math';

void main(List<String> args) {
  print(solution(12));
}

// solution
List<int> solution(int area) {
  List<int> result = [];

  while (area > 0) {
    final largestSide = sqrt(area).truncate().toInt();
    final largestSquareArea = largestSide * largestSide;
    area -= largestSquareArea;

    result.add(largestSquareArea);
  }

  return result;
}
