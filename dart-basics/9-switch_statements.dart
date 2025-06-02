void main() {
  // Dart Basics | 9 - Switch Statements

  var num1 = 10;
  var num2 = 5;

  String operator = '*';

  switch (operator) {
  // If the operator is '+'
    case '+' :
      print('$num1 $operator $num2 = ${num1 + num2}');
      break;
    case '-' :
      print('$num1 $operator $num2 = ${num1 - num2}');
      break;
    case '*' :
      print('$num1 $operator $num2 = ${num1 * num2}');
      break;
    case '/' :
      print('$num1 $operator $num2 = ${num1 / num2}');
      break;
  // Default case for unsupported operators
    default :
      print('Case not found!');
      break;
  }
}