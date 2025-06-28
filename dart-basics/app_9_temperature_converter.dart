import 'dart:io';
void main() {
  // Dart Basics | App 9 | Temperature Converter

  /*
  Create a simple temperature converter.

  Steps:
  1. Ask the user to enter a temperature value (as number).
  2. Ask the user to choose conversion type:
     - 'C' to convert from Celsius to Fahrenheit
     - 'F' to convert from Fahrenheit to Celsius
  3. Perform the conversion and print the result.

  Conversion formulas:
  - C → F: (C * 9/5) + 32
  - F → C: (F - 32) * 5/9

  Example Output:
  Enter temp: 25
  Convert to (C/F): F
  Result: 77.0°F

  Focus:
  - Math operations
  - String input/validation
  - Output formatting
  */
  double value;
  String type;
  double result;
  while(true) {
    try {
      stdout.write('Enter temperature value : ');
      value = double.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print('Invalid Number!');
    }
  }

  while(true) {
    try {
      stdout.write('Enter type of value ( C or F ) : ');
      type =stdin.readLineSync()!;
      if (type.toUpperCase() =='C' || type.toUpperCase() == 'F') {
        break;
      } else {
        print('Invalid Type!');
      }
    } catch (e) {
      print(e);
    }
  }
  if (type.toUpperCase() == 'C') {
    result = (value * 9/5) + 32;
    print('[-] Converting From C to F');
    print('[-] Result: $result°F');
  } else { // (type == 'F')
    result = (value -32) * 5/9;
    print('[-] Converting From F to C');
    print('[-] Result: $result°C');
  }
}