import 'dart:math';
void main() {
 // Dart Functions | 7- Lambda Expression 2
 // Also we can store lambda expression inside a variable

 // Call lam1 for print Hello
 elam1();

 // lam2 return sum of 3 and 1
 print(elam2());

 // Let's say x=4, y= 296 parameters inside lam3
 elam3(4, 296); // Nothing shown ?
 print(elam3(4, 296)); // because it was return value not print! so we should use print to show value

 // lam4 same as lam3 but this function will print result directly
 elam4(4, 296);
}

// Function in print Hello in one-line
//lam1() => print('Hello');
var elam1 = () => print('Hello');

// This function return value without typing 'return'
//lam2() => 3+1;
var elam2 = () => 3+1;

// lam3 have two parameters and return sum of x + y
//lam3 (x,y) => x+y;
var elam3 = (x,y)  => x+y;

// lam4 with parameters ( x and y ) and print result of x+y
//lam4(x,y) => print(x+y);
var elam4 = (x,y)  => print(x+y);