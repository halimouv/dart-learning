import 'dart:io';
void main() {
  // Dart Basics | App 1 | Hello User
  
  // Ask the user to enter their name.
  // Then print a welcome message:
  // "Welcome, [name]! Have a great coding day."
  // Focus: String handling, user input, and print output.
  
  stdout.write('What\'s your name ? : ');
  String name = stdin.readLineSync()!;
  print('Welcome $name ! Have a great coding day!');
}