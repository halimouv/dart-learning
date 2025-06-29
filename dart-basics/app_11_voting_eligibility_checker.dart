import 'dart:io';
void main() {
  // Dart Basics | App 11 | Voting Eligibility Checker

  /*
  Build an app to check if a user is eligible to vote.

  Steps:
  1. Ask the user to enter their name.
  2. Ask for their age.
  3. If the age is 18 or older → print "[Name], you are eligible to vote!"
     Otherwise → print "[Name], you are not eligible to vote yet."

  Bonus:
  - Validate that age is a number and greater than 0.
  - Capitalize the first letter of the name for a cleaner output.

  Focus:
  - User input
  - Conditionals
  - String formatting and logic
  */
  int age=0;
  String name='';
  try {
    stdout.write('Whats your name ? : ');
    name = stdin.readLineSync()!;

    stdout.write('Whats your age ? : ');
    age = int.parse(stdin.readLineSync()!);
  } catch(e) {
    print('[-] Error : $e');
  }

  if (name != '') {
    if (age >=1 && age <=167) {
      if ( age >= 18) {
        print('${name.substring(0,1).toUpperCase()}${name.substring(1,name.length).toLowerCase()}, you are eligible to vote!');
      } else {
        print('${name.substring(0,1).toUpperCase()}${name.substring(1,name.length).toLowerCase()}, you are not eligible to vote yet.');
      }
    } else {
      print('[-] Age out of the range!');
    }
  } else {
    print('[-] Empty name!');
  }
}
