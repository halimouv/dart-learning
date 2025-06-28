import 'dart:io';
void main() {
  // Dart Basics | App 4 | Simple Calculator

  /*
  Ask the user to enter:
  1. First number
  2. Operator (+, -, *, /)
  3. Second number

  Then perform the operation and print the result.

  Example:
  Input: 10, +, 5 → Output: 10 + 5 = 15

  Make sure to:
  - Handle division by zero
  - Handle invalid operators
  - Use clear output formatting

  Focus: user input, conditionals, and arithmetic operations.
  */
  int num1;
  int num2;
  String operator;
  while(true) {
    try {
      stdout.write('First number : ');
      num1 = int.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print('Invalid number ! try again');
    }
  }
  while(true) {
    try {
      stdout.write('Second number : ');
      num2 = int.parse(stdin.readLineSync()!);
      if (num2 !=0) {
        break;
      }
      print('division by zero! try again');
    } catch (e) {
      print('Invalid number ! try again');
    }
  }
  oplp:while(true) {
    try {
      stdout.write('Operator (+ , - , * , / ) : ');
      operator = stdin.readLineSync()!;
      switch(operator) {
        case '+':
        case '-':
        case '*':
        case '/':
          break oplp;
        default :
          print('Invalid Operator');
      }
    } catch (e) {
      print(e);
    }
  }
    print(operator);
    switch(operator) {
      case '+':
        print('$num1 + $num2 = ${num1+num2}');
        break;
      case '-':
        print('$num1 - $num2 = ${num1-num2}');
        break;
      case '*':
        print('$num1 / $num2 = ${num1*num2}');
        break;
      case '/':
        print('$num1 / $num2 = ${num1/num2}');
        break;
    }
}