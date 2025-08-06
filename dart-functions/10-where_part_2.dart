void main() {
  // Dart Functions | 10- Where Part 2

  // Create a list containing both integers and doubles
  List numbers = [1 , 2.55 , 3 , 4.1 , 5 , 6 , 7.214 , 8 , 9.73 , 10];

  // Find the index of the first double value starting from index 5
  print(numbers.indexWhere((element) => element is double,5));

  // Retain only the numbers greater than 5
  numbers.retainWhere((number) => number > 5);
  print(numbers);

  // Remove all double values from the list
  numbers.removeWhere((numb) => numb is double);
  print(numbers);

  //print(numbers.firstWhere((element) => element is double)); Cannot run this line because there's no double values
  // So we should use else statment
  print(numbers.firstWhere((element) => element is double, orElse: () => 0)); // return zero if there's no doulbe numbers

  // Also we can use try & catch
  try {
      print(numbers.firstWhere((element) => element is double));
  } catch(_) {
    print('No double values');
  }

  // singleWhere return only one element so if there's too many elements meets the condition so it returns error
  // So we must add try & catch
  try {
      print(numbers.singleWhere((mynum) => mynum >5));
  } catch (e) {
    print(e) ; // if there's too many elements will print this
  }
}