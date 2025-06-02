void main() {
  // Dart Basics | 12 - Nested Loops App

  /*
  Nested Loops Apllication is :
  Multiplication Table
  We will use all types of loops to create this application :
  -1- For Loop
  -2- While Loop
  -3- Do-While Loop
  -4- For-In Loop (With Lists you can skip this)
   */

  // For Loop Method
  for (var i =1 ; i<11; i++) {
    for (var j = 1 ; j <11; j++) {
      print('$i x $j = ${i*j}');
    }
  }

  // While Loop Method
  var whilei = 1;
  while(whilei < 11) {
    var whilej = 1;
    while(whilej < 11) {
      print('$whilei x $whilej = ${whilei*whilej}');
      whilej++;
    }
    whilei++;
  }

  // Do-While Loop Method
  var doi = 1;
  do {
    var doj =1;
    do {
      print('$doi x $doj = ${doi*doj}');
      doj++;
    } while(doj <11);
    doi++;
  }while(doi <11);

  // For-In Loop Method
  List numbers = [1,2,3,4,5,6,7,8,9,10];
  for (var number1 in numbers) {
    for (var number2 in numbers) {
      print('$number1 x $number2 = ${number1*number2}');
    }
  }
}