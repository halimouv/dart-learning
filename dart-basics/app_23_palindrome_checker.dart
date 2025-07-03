import 'dart:io';
void main() {
  // Dart Basics | App 23 | Palindrome Checker

  /*
  Build a simple Palindrome Checker.

  Steps:
  1. Ask the user to enter a word or sentence.
  2. Convert the input to lowercase and remove spaces.
  3. Check if the text reads the same forwards and backwards.
  4. Display if it's a 'palindrome' or not.

  Example Output:
  Enter text: level
  Output: "level" is a palindrome.

  Bonus:
  - Allow full sentence check (ignoring spaces and punctuation).
  - Repeat until user types "exit".

  Focus:
  - String manipulation
  - Reversing logic
  - Input loop and feedback
  */

  stdout.write('Enter a word or sentence : ');
  String userInput = stdin.readLineSync()!.trim().toLowerCase();
  String reversed = userInput.split('').reversed.join();
  userInput == reversed ? print('$userInput is palindrome'): print('$userInput is not palindrome');
}
