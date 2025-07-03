import 'dart:io';
void main() {
  // Dart Basics | App 25 | Multiples Finder

  /*
  Build an app to find all multiples of a number within a given range.

  Steps:
  1. Ask the user to enter a base number (e.g. 5).
  2. Ask for the range limit (e.g. 50).
  3. Print all numbers between 1 and the limit that are divisible by the base.

  Example Output:
  Base number: 5
  Range limit: 30
  → Multiples of 5: 5, 10, 15, 20, 25, 30

  Bonus:
  - Validate inputs to ensure they are positive.
  - Let user repeat or exit by typing 'exit'.

  Focus:
  - Loops
  - Input validation
  - List and string formatting
  */
  print('[Multiples Finder] Type -1 to stop this app');
  while(true) {
    try {
      stdout.write('Enter your number for multiples check : ');
      int userNum = int.parse(stdin.readLineSync()!);
      
      if (userNum == -1) {
        print('Goodybye!');
        break;
      }
      
      if (userNum <=0) {
        print('Try again!');
        continue;
      }

      stdout.write('Enter range for multiples checking : ');
      int userRange = int.parse(stdin.readLineSync()!);

      if (userRange <=0 || userRange < userNum) {
        print('Try again!');
        continue;
      }

      List<int> multiContainer = [];
      for ( var i= 1; i<= userRange;i++) {
        if (userNum*i <=userRange) {
          multiContainer.add(i*userNum);
        }
      }
      print('Multiples of $userNum : $multiContainer');
    } catch(e) {
      print(e);
    }
  }
}