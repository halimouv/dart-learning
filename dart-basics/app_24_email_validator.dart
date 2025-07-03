import 'dart:io';
void main() {
  // Dart Basics | App 24 | Email Validator

  /*
  Build a basic email validator.

  Steps:
  1. Ask the user to enter an email address.
  2. Check if it contains '@' and ends with a common domain like '.com' or '.net'.
  3. Display whether the email is valid or not.

  Example Output:
  Enter email: test@example.com
  Output: ✅ Valid email.

  Bonus:
  - Validate against multiple domains (e.g., .com, .net, .org, .dz).
  - Trim spaces and make the check case-insensitive.
  - Allow re-entry until user types 'exit'.

  Focus:
  - String checks
  - Conditions and loops
  - Input handling
  */
  List<String> validDomains = ['.com','.net','.org','.dz'];
  print('[Email Validator] Type "exit" to quit.');
  while (true) {
    try {
      stdout.write('Enter email address : ');
      String userInput= stdin.readLineSync()!.trim().toLowerCase();
      if ( userInput == 'exit') {
        print('Goodbye');
        break;
      }
      bool hasAt = userInput.contains('@');
      bool hasValidDomain = validDomains.any((domain) => userInput.endsWith(domain));
      if (hasValidDomain && hasAt) {
        print('Valid Email');
      } else {
        print('Invalid Email!');
      }
    } catch(e) {
      print(e);
    }
  }
}