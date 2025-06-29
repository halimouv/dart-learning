import 'dart:io';
void main() {
  // Dart Basics | App 13 | ATM Withdrawal Simulator

  /*
  Create a basic ATM simulator.

  Steps:
  1. Set a predefined account balance (e.g. 1000).
  2. Ask the user to enter a withdrawal amount.
  3. If the amount is greater than the balance → print "Insufficient funds."
     Else → subtract the amount and show remaining balance.

  Example Output:
  Enter amount to withdraw: 300
  Success! Your new balance is 700.

  Bonus:
  - Validate that amount is a positive number
  - Prevent withdrawals of zero or negative numbers

  Focus:
  - Number input
  - Conditionals
  - Simple math operations
  - Clean user feedback
  */
  List<Map> bankUsers= [{'username':'ahmed','password':'dart123','balance':1000.0},{'username':'James','password':'jam321','balance':700.0}];
  List withdrawOptions = [100,200,250,500];
  String enteredUser;
  String enteredPass;
  int userPosition;

  usercheck: while(true) {
    try {
      stdout.write('Enter username : ');
      enteredUser = stdin.readLineSync()!.trim();
      for (var i = 0 ; i < bankUsers.length;i++) {
        if (bankUsers[i]['username'] == enteredUser) {
          userPosition = i;
          break usercheck;
        }
      }
      print('Username Wrong! try again');
    } catch (e) {
      print(e);
    }
  }

  passcheck: while(true) {
    try {
      stdout.write('Enter Password : ');
      enteredPass = stdin.readLineSync()!;
      for (var i = 0 ; i < bankUsers.length;i++) {
        if (bankUsers[i]['username'] == enteredUser) {
          if (bankUsers[i]['password'] == enteredPass) {
            break passcheck;
          }
        }
      }
      print('Password Wrong! try again');
    } catch (e) {
      print(e);
    }
  }

  print('[ACCESS GRANTED] Welcome $enteredUser to Dart Bank!');
  print('[Dart Bank] $enteredUser, Balance: ${bankUsers[userPosition]['balance']}');

  while(true) {
    try {
      print('[Dart Bank] Please Select Withdraw Option :');
      print('[0] - Withdraw 100\$');
      print('[1] - Withdraw 200\$');
      print('[2] - Withdraw 250\$');
      print('[3] - Withdraw 500\$');
      print('[4] - Withdraw All');
      print('[5] - Withdraw Amount');
      int userSelection =int.parse(stdin.readLineSync()!);
      if (userSelection >=0 && userSelection <=3) {
        if (bankUsers[userPosition]['balance'] >= withdrawOptions[userSelection]) {
          bankUsers[userPosition]['balance'] -= withdrawOptions[userSelection];
          print('[Dart Bank] $enteredUser Success!, Balance: ${bankUsers[userPosition]['balance']}');
          break;
        } else {
          print('[Dart Bank] $enteredUser, Insufficient funds.');
        }
      }
      if (userSelection == 4) {
        //bankUsers[userPosition]['balance'] *=0;
        if (bankUsers[userPosition]['balance'] != 0) {
          bankUsers[userPosition]['balance'] -= bankUsers[userPosition]['balance'];
          print('[Dart Bank] $enteredUser Success!, Balance: ${bankUsers[userPosition]['balance']}');
          break;
        } else {
          print('[Dart Bank] $enteredUser Insufficient funds.!, Balance: ${bankUsers[userPosition]['balance']}');
          break;
        }
      }

      if (userSelection == 5 ) {
        stdout.write('[Dart Bank] Withdraw Amount : ');
        int withdrawAmount = int.parse(stdin.readLineSync()!);
        if (withdrawAmount != 0) {
          if (bankUsers[userPosition]['balance'] >= withdrawAmount) {
            bankUsers[userPosition]['balance'] -=withdrawAmount;
            print('[Dart Bank] $enteredUser Success!, Balance: ${bankUsers[userPosition]['balance']}');
            break;
          } else {
            print('[Dart Bank] $enteredUser, Insufficient funds.');
          }
        } else {
          print('[Dart Bank] $enteredUser,  Zero not accepted.');
        }
      }

    } catch(e) {
      print(e);
    }
  }
}