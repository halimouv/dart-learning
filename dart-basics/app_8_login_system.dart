import 'dart:io';
void main() {
  // Dart Basics | App 8 | Login System

  /*
  Build a simple login system with predefined credentials.

  Steps:
  1. Store a predefined username and password (hardcoded).
  2. Ask the user to input their username and password.
  3. Check if the credentials match:
     - If both are correct → print "Login successful. Welcome, [username]!"
     - If username is wrong → print "User not found."
     - If password is wrong → print "Incorrect password."

  Bonus:
  - Make the username check case-insensitive.
  - Prevent empty inputs using validation.

  Focus:
  - String comparison
  - Input validation
  - Conditionals
  */
  String passwordInput;
  String usernameInput;
  Map userData = {'username':'0xAhmed','password':'dart123'};

  // Username
  while(true) {
    try {
      stdout.write('[Login System] Username : ');
      usernameInput = stdin.readLineSync()!;
      if(usernameInput.length >= 3) {
        break;
      } else {
        print('Username is too short! try again.');
      }
    } catch(e) {
      print(e);
    }
  }
  // Password
  while(true) {
    try {
      stdout.write('[Login System] Password : ');
      passwordInput = stdin.readLineSync()!;
      if(passwordInput.length >= 6) {
        break;
      } else {
        print('Password is too short! try again.');
      }
    } catch(e) {
      print(e);
    }
  }

  // Checking..
  if (usernameInput.trim().toLowerCase() == userData['username'].toString().trim().toLowerCase()) {
    if (passwordInput == userData['password']) {
      print('Login successful. Welcome, [${usernameInput.trim()}]!');
    } else {
      print('Incorrect password.');
    }
  } else {
    print('User not found.');
  }
}