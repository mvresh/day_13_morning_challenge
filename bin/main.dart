// Challenge 1
// Read the two problems below and write test cases for them, make sure test cases run and fail

// Challenge 2
// Repeat the Shorter String
// Write a function that repeats the shorter string until it is equal to the length of the longer string.
// Examples:
// lengthen("abcdefg", "ab") ➞ "abababa"
// lengthen("ingenius", "forest") ➞ "forestfo"
import 'dart:math';

String lengthen(String word1, String word2){
  int finalLength = max(word1.length,word2.length);
  //int minLength = min(word1.length,word2.length);
  String finalWord = '';
  int tracker =0;
  for(int i = 0;i<finalLength;i++){
    if(word2.length<word1.length){
      if(tracker < word2.length){
        finalWord = finalWord + word2[tracker];
        tracker++;
      }
      else {
        tracker = 0;
      }
    }
    else if(word1.length<word2.length){
      if(tracker < word1.length){
        finalWord = finalWord + word1[tracker];
        tracker++;
      }
      else {
        tracker = 0;
      }
    }

  }
  return finalWord;

}

// Challenge 3
// Given what is supposed to be typed and what is actually typed,
// write a function that returns the broken key(s). The function looks like:
// findBrokenKeys(correct phrase, what you actually typed)
// Examples
// findBrokenKeys("happy birthday", "hawwy birthday") ➞ ["p"]
// findBrokenKeys("beethoven", "affthoif5") ➞ ["b", "e", "v", "n"]
List findBrokenKeys(String correct, String typed){

  List brokenKeys = [];
  if(correct.length == typed.length){
    for(int i =0;i<correct.length;i++){
      if(correct[i]!=typed[i]){
        if(!brokenKeys.contains(correct[i])){
          brokenKeys.add(correct[i]);
        }
      }
    }
  }
  return brokenKeys;
}


main() {
  print(lengthen("abcdefg", "ab"));
  print(findBrokenKeys("beethoven", "affthoif5"));
}
