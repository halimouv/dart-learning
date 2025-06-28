import 'dart:io';
void main() {
  // Dart Basics | App 10 | Contact Book

  /*
  Build a simple contact book application.

  Steps:
  1. Ask the user how many contacts they want to save.
  2. For each contact:
     - Ask for the contact's name.
     - Ask for the contact's phone number.
  3. Store the contacts in a Map.
  4. After input, display all saved contacts like this:

  Example Output:
  [1] Name: Alice | Phone: +123456789
  [2] Name: Bob   | Phone: +987654321

  Bonus:
  - Make sure phone numbers are not empty or invalid (e.g., must be digits).
  - Ensure name is not empty and has at least 3 characters.

  Focus:
  - Maps
  - Loops
  - Input validation
  - String formatting
  */
  int contactsCount;
  Map contacts= {};
  Map countries = {'ALGERIA':'+213','TUNISIA':'+216','MOROCCO':'+212'};
  while(true){
    try {
      stdout.write('How many contacts you want ? : ');
      contactsCount = int.parse(stdin.readLineSync()!);
      if (contactsCount != 0) {
        break;
      } else {
        print('Zero contact! try again');
      }
    } catch(e) {
      print(e);
    }
  }

  for (var i = 0 ; i <contactsCount; i++) {
    while(true) {
      try {
        stdout.write('Contact [${i+1}] name ? : ');
        var cname = stdin.readLineSync()!;

        stdout.write('Phone Number [${i+1}] name ? : ');
        var cnumber = int.parse(stdin.readLineSync()!);

        stdout.write('Country Name of contact [${i+1}] ? : ');
        String ccountry = stdin.readLineSync()!;
        ccountry = ccountry.toUpperCase();
        if (cname.length >=3) {
          if (ccountry == '' || countries[ccountry] == null) {
            contacts.addAll({cname:cnumber});
            break;
          } else {
            var finalNumber = countries[ccountry] + cnumber.toString();
            contacts.addAll({cname:finalNumber});
            break;
          }
        } else {
          print('Contact name too short! try again');
        }
      }catch (e) {
        print(e);
      }
    }
  }
  List keystore = contacts.keys.toList();
  for (var j = 0; j <contacts.length;j++) {
    print('[${j+1}] Name : ${keystore[j]} | Phone : ${contacts[keystore[j]]}');
  }
}