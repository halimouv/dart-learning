void main() {
   // Dart Basics | 3 - Type Casting
   int x = 8;
   double y = x.toDouble(); // We can't store int inside double but if you use function .toDouble() it will be changed to double
   String z = x.toString(); // Same thing with strings, you can change any value type to String

   // Testing type outputs
   // .runtimeType returns the type of the variable you have selected
   print(x.runtimeType); // int because we declared as int
   print(y.runtimeType); // double because we converted it to double
   print(z.runtimeType); // returns String 
}
