import 'dart:io';
void main() {
  // Dart Basics | App 2 | Grade Evaluator

  /*
  Ask the user to enter a score between 0 and 100.
  Then evaluate the grade and print a message like:

  Score: 85
  Grade: Very Good

  Grading rules:
  90 - 100   → Excellent
  80 - 89    → Very Good
  70 - 79    → Good
  60 - 69    → Pass
  Below 60   → Failed

  Focus: number input, if/else statements, and clear output formatting.
  */

  stdout.write('Student grade : ');
  int grade = int.parse(stdin.readLineSync()!);
  if (grade >= 90) {
    print('Student result is : $grade - Excellent');
  } else if (grade >= 80) {
    print('Student result is : $grade - Very Good');

  } else if (grade >= 70) {
    print('Student result is : $grade - Good ');

  } else if (grade >= 60) {
    print('Student result is : $grade - Pass');

  } else {
    print('Student result is : $grade - Failed');
  }
}