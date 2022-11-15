void main(List<String> args) {
  String date = "/Date(470620800000)/";
  testDate(date);
}

// test date
testDate(String date) {
  var fullDate = DateTime.fromMillisecondsSinceEpoch(
      int.parse(date.substring(6).replaceAll(")/", "")));

  print(fullDate.toIso8601String());
}
