void main() {
  // Dart Functions | 9- Where Part 1

  var numbersList = [1, 2, 3, 4.2, 5, 6.66, 7, 8, 9.1,7,10];

  // Function of where can filter list of data
  // Filter list from double numbers and keep only integer :
  var numbersListFilter= numbersList.where((item)=> item.runtimeType==int);
  print(numbersListFilter);

  // Also we can use whereType to filter type on the list
  print(numbersList.whereType<int>()); // Same result with previous filter

  // Now only numbers less than 5:
  print(numbersList.where((mynum) => mynum<5));

  // firstWhere return the first number meets the condition ( greater than 6 )
  print(numbersList.firstWhere((firstNum) => firstNum>6));

  // lastWhere return the last number in the list meet our condition ( less than 4 )
  print(numbersList.lastWhere((lastNum) => lastNum <4));

  // Print only even numbers :
  print(numbersList.where((filter) => filter % 2 == 0));

  // Print only odd numbers :
  print(numbersList.where((odd) => odd % 2 !=0));

  // indexWhere return index of number 7 in our list
  print(numbersList.indexWhere((indexNum) => indexNum == 7)); // index 6
  // to confirm that :
  print(numbersList[numbersList.indexWhere((indexNum) => indexNum == 7)]); // Print 7

  // We can also get last index of number 7 in our list
  print(numbersList.lastIndexWhere((liw)=> liw ==7)); // index 9
}