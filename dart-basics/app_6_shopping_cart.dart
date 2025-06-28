import 'dart:io';
void main() {
  // Dart Basics | App 6 | Shopping Cart Total

  /*
  Create a simple shopping cart app.

  Steps:
  1. Ask the user how many products they bought.
  2. For each product:
     - Ask for the product name.
     - Ask for the product price.
  3. Add all prices to calculate the total.
  4. After all inputs, display a full summary like this:

  Example Output:
  [1] Keyboard - $150.0
  [2] Mouse - $88.0
  [3] Monitor - $1200.0
  =====================
  Total: $1438.0

  Focus:
  - Using Maps or Lists
  - Loops
  - Input parsing
  - Formatted printing
  */

  Map<String,int> products= {};
  var totalPrice =0;
  stdout.write('How many products you bought ? : ');
  int totalProducts = int.parse(stdin.readLineSync()!);

  for (var i = 0 ; i < totalProducts; i++) {
    stdout.write('[Product ${i+1} name] : ');
    String productName = stdin.readLineSync()!;
    stdout.write('[Product ${i+1} price] : ');
    int productPrice = int.parse(stdin.readLineSync()!);
    products.addAll({productName:productPrice});
    totalPrice += productPrice;
  }

  List keystoring = products.keys.toList();
  for (var j = 0; j < products.length;j++) {
    print('[${j+1}] ${keystoring[j]} - ${products[keystoring[j]]}');
  }
  print('=====================');
  print('Total : \$${totalPrice}');
}