void main(List<String> args) {
  String sentence = "The quick brown fox jumps over the lazy dog";
  print(pigLatin(sentence));
}

String pigLatin(String sentence) {
  List<String> words = sentence.split(" ");
  String pigLatin = "";
  for (var i = 0; i < words.length; i++) {
    String currentWordReversed = words[i].split("").reversed.join() + "ay";

    pigLatin = pigLatin + currentWordReversed + " ";
  }
  return pigLatin;
}
