import 'dart:io';
void main() {
  // Dart Basics | App 19 | Even or Odd Number Checker

  /*
  Build a simple app to check if a number is even or odd.

  Steps:
  1. Ask the user to enter a number.
  2. Check if the number is even or odd using the modulus operator (%).
  3. Display the result.

  Example Output:
  Enter a number: 4
  Output: 4 is even.

  Bonus:
  - Validate that the input is a valid integer.
  - Handle negative numbers correctly.

  Focus:
  - Input parsing
  - Arithmetic (% operator)
  - Conditionals and feedback
  */
  int userNumber;
  while(true) {
    try {
      stdout.write('[-] Enter a number : ');
      userNumber = int.parse(stdin.readLineSync()!);
      if (userNumber >0) {
        if (userNumber % 2 == 0) {
          print('[-] User number is Even');
          break;
        } else {
          print('[-] User number is Odd');
          break;
        }
      } else {
        print('Negative numbers not allowed! try again');
        print('You can use : ${userNumber.abs()}');
      }
    } catch(e) {
      print(e);
    }
  }
}