import 'dart:io';
void main() {
  // Dart Basics | App 22 | Leap Year Checker

  /*
  Build a simple app to check if a year is a leap year.

  Steps:
  1. Ask the user to enter a year.
  2. Check if it's a leap year using this rule:
     - If divisible by 4 → it's a leap year
     - Except if divisible by 100 → not a leap year
     - Unless also divisible by 400 → it's a leap year

  3. Show message like:
     → "2024 is a leap year!"
     → "2023 is not a leap year."

  Bonus:
  - Validate input (positive integer)
  - Handle future and past years

  Focus:
  - Arithmetic logic
  - Input parsing and validation
  - Conditionals
  - Clean user output
  */

  int year;
  while(true) {
    try {
      stdout.write('Enter a year : ');
      year = int.parse(stdin.readLineSync()!);
      if (year >= 0) {
        if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
          print('$year is a leap year');
        } else {
          print('$year is not a leap year');
        }
        break;
      } else {
        print('Invalid year! please try again.');
      }
    } catch(e) {
      print(e);
    }
  }
}