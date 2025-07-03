void main() {
  // Dart Functions | 8- Higher-Order Functions

  // Print sum of 7 and 3 by function 'action' with two integer and function
  print(action(7, 3, sumFun));

  // Multiplication of two numbers
  print(action(10, 5, multiFun));

  // Division of two numbers
  action(14, 14, divFun);
}

// This function have two parameters a and b and return sum of them
sumFun(a,b) {
  return a+b;
}

// Function of multiFun accept two numbers and return multiplication of them also this is lambda expression
multiFun (a,b) => a*b;

// divFun print division of a and b
divFun (a,b) => print(a/b);

// And this function own 3 parameters , two variables and function
// So this function call another function
action (int variableone, int variabletwo, Function anyFun) {
  return anyFun(variableone,variabletwo);
}