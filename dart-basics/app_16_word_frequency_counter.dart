import 'dart:io';
void main() {
  // Dart Basics | App 16 | Word Frequency Counter

  /*
  Build a word frequency counter.

  Steps:
  1. Ask the user to enter a sentence or paragraph.
  2. Split the input into words.
  3. Count how many times each word appears.
  4. Display the frequency of each word (case-insensitive).

  Example Output:
  Input: "Dart is fun and Dart is powerful"
  Output:
  - dart: 2
  - is: 2
  - fun: 1
  - and: 1
  - powerful: 1

  Bonus:
  - Ignore punctuation (e.g., ".", ",", "!"...).
  - Sort the output alphabetically.

  Focus:
  - String manipulation
  - Maps (word → count)
  - Loops and input parsing
  - Case handling
  */

  stdout.write('Enter a sentence or paragraph : ');
  String userString = stdin.readLineSync()!;
  List userStringList = userString.toLowerCase().split(' ');
  Map<String,int> userStringCount= {};

  userStringList.forEach((word){
    if (!userStringCount.keys.contains(word)) {
      userStringCount.addAll({word:1});
    } else {
      userStringCount[word] = userStringCount[word]!+1;
    }
  });

  var sortedKeys = userStringCount.keys.toList()..sort();
  for (var word in sortedKeys) {
    print('[-] $word : ${userStringCount[word]}');
  }

}