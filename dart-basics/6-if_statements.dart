void main() {
   // Dart Basics | 6 - If Statements
   // Basic If Condition
   var x = 10;
   var y = 20;

   if (x > y) { // Condition
      print('That\'s true x > y'); // You can use \ to insert ( ' ) or change '' to ""
   }

   // If Condition with else
   if ( x >= y) {
      print("That's true x bigger than y or equal");
   } else {
      print('Not true, y > x and not equal');
   }

   // If Condition with else (Single-Line)
   x > y ? print('Yes'):print('No, y>x'); // [Condition]? true : else (false);

   // If Conditions with else (Not one condition)
   // You can use more than two conditions
   if ( x > y) {
      print("That's true x bigger than y");
   } else if (x == y) {
      print('x is not bigger than y but equal');
   } else {
      print('Not true, y > x and not equal');
   }
}
