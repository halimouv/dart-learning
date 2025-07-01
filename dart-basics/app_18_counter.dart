import 'dart:io';
void main() {
  // Dart Basics | App 18 | Simple Counter App

  /*
  Build a simple interactive counter app.

  Steps:
  1. Start a counter at 0.
  2. Inside a while loop, keep asking the user to press Enter to increase the counter.
  3. Every time the user presses Enter, show the current count.
  4. If the user types "exit" → stop the loop and print "Goodbye!"

  Example Output:
  Counter started. Press [Enter] to count or type 'exit' to quit.
  → [1]
  → [2]
  → [3]
  → Goodbye!

  Bonus:
  - Add a reset option (type "reset" to go back to 0).
  - Prevent accidental whitespace using `.trim()`.

  Focus:
  - Loops
  - User input
  - String comparison and logic
  - Simple state tracking
  */
  int counter=0;
  print('[-] Click Enter to Count');
  while(true) {
    String userAction = stdin.readLineSync()!.trim();
    if (userAction == 'exit') {
      print('goodbye!');
      break;
    } else if ( userAction == 'reset'){
      counter = 0;
      continue;
    }
    counter++;
    print('[-] Counter : $counter');
  }
}