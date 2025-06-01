void main () {
   // Dart Basics | 2- Variables
   var a = 5;
   print('a = $a'); // curly brackets on $ not mandatory if you using one char/word
   print('a = $a+5'); //Output will be : 5+5 not 10
   print('a = ${a+5}'); // Output : 10

   // Variables Types
   int b = 77; // Integer Variables
   double c = 77.7; // Double Variables
   String d = 'Halimouv'; // String contains only text (without $ , ${})
   bool e = true; // Boolean accept only two values true or false
   List f = ['Halimouv','Dart','Github','Dart-Learning']; // List of data
   Map g = {"username":"Halimouv","skills":['Dart','Flutter','Java','Problem Solving']}; // You can insert List inside Map

   // Constant Types
   final h = 2; // final value fixed after initialization
   final String i = 'DGUI'; // final with type
   const int j = 5; // const : compile-time constant
}