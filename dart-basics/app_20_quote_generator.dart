import 'dart:io';
import 'dart:math';
void main() {
// Dart Basics | App 20 | Random Motivational Quote Generator

/*
Build a simple app that gives a motivational quote.

Steps:
1. Define a list of motivational quotes (at least 5).
2. Use the `Random` class to select one quote randomly.
3. Display it to the user when they run the app.

Example Output:
✨ "Success is not final; failure is not fatal: It is the courage to continue that counts."

Bonus:
- Ask user if they want another quote.
- Keep showing new quotes until the user types "exit".

Focus:
- Lists
- Random selection
- Loops and user interaction
*/

  List motivationalQuote = [
    'It is better to fail in originality than to succeed in imitation.',
    'Success is not final; failure is not fatal: It is the courage to continue that counts.',
    'The road to success and the road to failure are almost exactly the same',
    'Keep your eyes on the stars and your feet on the ground.',
    'Success usually comes to those who are too busy to be looking for it.'
  ];
  print('[Motivational Quote App] - If you want to exit app write exit');
  print('[Motivational Quote App] - Click Enter for random quote');


  while(true) {
    int randomPosition = new Random().nextInt(motivationalQuote.length);
    String rpc = stdin.readLineSync()!;
    if (rpc.toLowerCase() == 'exit') {
      print('[Motivational Quote App] - Goodbye!');
      break;
    } else {
      print('[-] ${motivationalQuote[randomPosition]}');
    }
  }
}