import 'dart:io';
void main() {
  // Dart Basics | App 7 | Word Analyzer

  /*
  Create a word analyzer tool.

  Steps:
  1. Ask the user to enter a word or sentence.
  2. Then display the following analysis:
     - Original input
     - Trimmed input
     - Total characters (after trimming)
     - Total words (if it's a sentence)
     - Is it all lowercase?
     - Is it all uppercase?
     - Reversed version

  Example:
  Input:   " Hello World "
  Output:
  Original: " Hello World "
  Trimmed: "Hello World"
  Characters: 11
  Words: 2
  Is lowercase? false
  Is uppercase? false
  Reversed: "dlroW olleH"

  Focus:
  - String methods (trim, split, length, toLowerCase, toUpperCase)
  - Input handling
  - String logic and manipulation
  */
  
  stdout.write('Enter a word or sentence : ');
  String userInput = stdin.readLineSync()!;
  
  print('Original: $userInput');
  print('Trimmed : ${userInput.trim()}');
  print('Characters: ${userInput.trim().length}'); // Without trim
  print('Words : ${userInput.trim().split(' ').length}'); // With trim
  print('isLowerCase ?: ${userInput == userInput.toLowerCase() ? true:false}');
  print('isUpperCase ?: ${userInput == userInput.toUpperCase() ? true:false}');
  print('Reversed : ${userInput.split('').reversed.join()}');
}
