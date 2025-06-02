import 'dart:io';
void main() {
   // Dart Basics | 16 - Inputs

  // Input Example 1 ( Age Calculator )
  print('Enter your year of birth : ');
  var userYob = stdin.readLineSync();
  var userAge = DateTime.now().year - int.parse(userYob!);
  print('Your age is $userAge');

  // Input Example 2 ( Password checker)
  print('What\'s the password ? : ');
  var password = stdin.readLineSync();
  if (password == '200hh7'){
    print('Password correct ! Welcome Halimouv');
  } else {
    print('Password Incorrect :(');
  }

  // Input Example 3 ( Hello Printer)
  print('Number of hello ? : ');
  var countOfHello = stdin.readLineSync();
  for (var i=1 ; i <= int.parse(countOfHello!); i++) {
    print('Hello $i');
  }

  /*
  These are simple examples
  you can add more conditions to avoid errors :
  - abs
  - Data Type Check
  - Try & Catch
  - and more...
   */
}