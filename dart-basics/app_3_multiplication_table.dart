import 'dart:io';
void main() {
  // Dart Basics | App 3 | Multiplication Table

  /*
  Ask the user to enter a number (1 to 10).
  Then use a loop to print the multiplication table for that number.

  Focus: user input, loops, and clear formatting.
  */

  stdout.write('Enter a number : ');
  int number = int.parse(stdin.readLineSync()!);

  for (var i = 1 ; i <= number ; i++) {
    for (var j = 1 ; j <= 10;j++) {
      print('$i x $j = ${i*j}');
    }
  }
}