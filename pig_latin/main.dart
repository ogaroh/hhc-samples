String pigLatin(String sentence) {
  List<String> words = sentence.split(" ");
  String pigLatin = "";
  for (var i = 0; i < words.length; i++) {
    pigLatin = "$pigLatin${words[i].split("").reversed.join()}ay ";
  }
  return pigLatin;
}

void main(List<String> args) {
  String sentence = "The quick brown fox jumps over the lazy dog";
  print(pigLatin(sentence));
}
