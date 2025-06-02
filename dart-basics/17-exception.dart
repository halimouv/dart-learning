import 'dart:io';
void main() {
   // Dart Basics | 17 - Exception

  /*
      To avoid errors of miss-using of user we will use try & catch
      While loop will be true until user enter valid number
   */

  // Input Example 1 ( Age Calculator )
  while(true) {
    try {
      print('Enter your year of birth : ');
      var userYob = stdin.readLineSync();
      if (int.parse(userYob!) >=0 && int.parse(userYob!)<= DateTime.now().year) { // Condition of years you can set  DateTime.now().year - 100 instead 0
        var userAge = DateTime.now().year - int.parse(userYob!);
        print('Your age is $userAge');
        break; // break loop after condition success or (user enter valid value)
      }
    } catch (e){ //e for error message
      print('Error : $e');
    }
  }
}