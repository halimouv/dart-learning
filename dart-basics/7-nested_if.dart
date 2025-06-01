void main() {
   // Dart Basics | 7 - Nested If Statements

   // Example of Nested If ( Insert if inside if )
  const String email = 'halimouv@github.com';
  const String password = 'halimouv/*-+.##@#<>';

  if (email ==  'halimouv@github.com' ) {          // Condition One - Email Check
     if (password ==  'halimouv/*-+.##@#<>' ) {    // Condition Two - Password Check
        print('Logged-In, Welcome Halimouv !');
        print('Last Login : ${DateTime.now()}');
     } else {
        print('Wrong Password!');
     }
   } else {
     print('Wrong Email!');
  }
}
