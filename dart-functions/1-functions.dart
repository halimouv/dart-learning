void main () {
  // Dart Functions | 1- Functions

  // Call func1:
  func1(); // This function will print Hello Dart!

  // func2 return only Hello Flutter and we can store that returned value on String or print it:
  String returned2= func2();
  print('$returned2 same value with ${func2()}');

  // in func3 we must insert two values of x and y and this function will print sum of x and y
  func3(99, 1); // 99+1 = 100

  // func4 take two values and return multiplication of a and b
  func4(18, 24); // Nothing shown ? because this function return value not print
  print(func4(18, 24)); // Result is 432

  // func5 we can only insert String value on the parameter because it's not dynamic anymore like previous examples
  func5('Halimouv'); // Print : Hello Mr.Halimouv

  // intToString that's function we've created to convert any integer to String
  print(intToString(1444)); // Will print : 1444
  print(intToString(1444).runtimeType); // .runtimeType to confirm that's return String not int
}

// Creating first function
// This function print only Hello Dart
func1() {
  print('Hello Dart!');
}

// This function return value String : 'Hello Flutter!
func2() {
  return 'Hello Flutter!';
}

// Function with parameters
func3(x,y) {
  print('$x + $y = ${x+y}');
}

// This function have two parameters and return a * b
func4(a,b) {
  return a*b;
}

// Also parameters of the functions can be fixed types in the last examples all functions return & accept dynamic values
func5 (String name) {
  print('Hello Mr.$name');
}

// In the previous function (func5) we saw that parameter have known type ( String )
// Now we can also set function return type, first thing add type (String, int ,double ...) before declare function
// For example I will create function convert int to String

String intToString(int number) {
  return number.toString();
}