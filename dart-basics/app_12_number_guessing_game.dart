import 'dart:io';
import 'dart:math';
void main() {
  // Dart Basics | App 12 | Number Guessing Game

  /*
  Create a simple number guessing game.

  Steps:
  1. Generate a secret number between 1 and 10 (use Random class).
  2. Ask the user to guess the number.
  3. Check if the guess is correct:
     - If correct → print "🎉 Correct! You guessed the number!"
     - If too high → print "Too high! Try again."
     - If too low → print "Too low! Try again."
  4. Repeat until the user guesses it correctly.

  Bonus:
  - Count how many attempts it took.
  - Validate that the input is a number between 1 and 10.

  Focus:
  - Random numbers
  - Loops and conditions
  - Input handling
  */

  var secretNumber = new Random().nextInt(10);
  int attempts = 0;
  print('[-] Welcome to guessing number game !');
  while(true) {
    try {
      stdout.write('[-] Guess the number : ');
      int guessed = int.parse(stdin.readLineSync()!);
      attempts++;
      if (guessed == secretNumber) {
        print('[+] Correct! you guessed the secret number with $attempts time!');
        break;
      } else if (guessed > secretNumber) {
        print('Too high! try again with lower number');
      } else if ( guessed < secretNumber) {
        print('Too low! try again with higher number');
      }
    } catch (error) {
      print(error);
    }
  }
}