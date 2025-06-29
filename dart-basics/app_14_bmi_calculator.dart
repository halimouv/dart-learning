import 'dart:io';
void main() {
  // Dart Basics | App 14 | BMI Calculator

  /*
  Build a Body Mass Index (BMI) calculator.

  Steps:
  1. Ask the user to enter their weight in kilograms.
  2. Ask the user to enter their height in meters.
  3. Calculate BMI using the formula: BMI = weight / (height * height)
  4. Display the result with classification:
     - BMI < 18.5 → Underweight
     - 18.5–24.9 → Normal weight
     - 25.0–29.9 → Overweight
     - 30.0 and above → Obesity

  Example Output:
  Weight (kg): 70
  Height (m): 1.75
  BMI: 22.86 → Normal weight

  Bonus:
  - Validate that weight and height are positive numbers
  - Round the BMI to 2 decimal places

  Focus:
  - Math operations
  - Conditionals
  - User input and validation
  - Formatted output
  */

  double weight;
  double height;
  var bmi;

  while(true) {
    try {
      stdout.write('Enter your weight (kg) : ');
      weight = double.parse(stdin.readLineSync()!);
      if (weight >=2 && weight <= 320) {
        break;
      } else {
        print('[BMI] Out of range! try again.');
      }
    } catch(error) {
      print(error);
    }
  }

  while(true) {
    try {
      stdout.write('Enter your height (m): ');
      height = double.parse(stdin.readLineSync()!);
      if (height >=0.4 && height <= 2.5) {
        break;
      } else {
        print('[BMI] Out of range! try again.');
      }
    } catch(error) {
      print(error);
    }
  }

  bmi = weight / (height * height);
  String roundedBMI = bmi.toStringAsFixed(1);
  if(bmi < 18.5 ) {print('[BMI : $roundedBMI] < 18.5 → Underweight');}
  if(bmi >= 18.5 && bmi <=24.9 ) {print('[BMI : $roundedBMI] 18.5–24.9 → Normal weight');}
  if(bmi >= 25.0 && bmi <=29.9 ) {print('[BMI : $roundedBMI] 25.0–29.9 → Overweight');}
  if(bmi >= 30.0 ) {print('[BMI : $roundedBMI] 30.0 and above → Obesity');}
}
