import 'dart:io';
void main() {
  // Dart Basics | App 15 | Currency Converter

  /*
  Build a basic currency converter.

  Steps:
  1. Define exchange rates for a few currencies (e.g., USD, EUR, GBP).
  2. Ask the user to enter an amount in their local currency (e.g., DZD).
  3. Ask the user to choose a currency to convert to.
  4. Perform the conversion and display the result.

  Example Output:
  Enter amount in DZD: 1000
  Convert to (USD/EUR/GBP): USD
  Result: 1000 DZD = 7.25 USD

  Bonus:
  - Validate input (amount must be a positive number).
  - Handle unknown currency codes.
  - Format result to 2 decimal places.

  Focus:
  - Maps (for rates)
  - Input parsing and validation
  - Arithmetic and string formatting
  */

  Map<String, double> exchangeRates = {
    'USD': 0.0073,
    'EUR': 0.0067,
    'GBP': 0.0058
  };

  double amount;
  String currency;
  double result;

  while(true) {
    try {
      stdout.write('Enter amount of (DZD) : ');
      amount = double.parse(stdin.readLineSync()!);
      if (amount >0) break;
      print('Invalid amount! try again.');
    } catch (e) {
      print('Invalid amount! try again.');
    }
  }

  while(true) {
    try {
      stdout.write('Enter currency for exchange (USD/EUR/GBP) : ');
      currency = stdin.readLineSync()!;
      if (exchangeRates.containsKey(currency.toUpperCase())) break;
      print('Invalid currency! try again.');
    } catch (e) {
      print('Invalid amount! try again.');
    }
  }
  result = amount * exchangeRates[currency.toUpperCase()]!;
  print('[Currency Converter] From DZD to ${currency.toUpperCase()} : ${amount.toStringAsFixed(2)} DZD = ${result.toStringAsFixed(2)} ${currency.toUpperCase()}');
}