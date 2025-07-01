void main() {
  // Dart Functions | 4- Through Exception

  // Year of birth for example is 2024
  int myob = 2012;

  // Call function of ageCalculator
  ageCalculator(myob);
}

// In this function we can pass year of birth value in yearofbirth
ageCalculator (int yearofbirth) {
  try {
    // Calculating age
    int userAge = DateTime.now().year - yearofbirth;
    // if userAge <0 that's mean the user insert value greater than current year
    // in this case we throw msg
    if (userAge < 0) throw FormatException();
    // if userAge <6
    if (userAge < 6) throw Exception;
    print('Your age is $userAge');
  } on FormatException {
    print('Invalid Year (Out of range)');
  } catch(e) {
    print('User age under 6!');
  }
}