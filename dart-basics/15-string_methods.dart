void main() {
  // Dart Basics | 15 - String Methods

  var username = 'Halimouv';
  // .is returns boolean value (true/false)
  print(username.isEmpty);
  print(username.isNotEmpty);
  print(username.contains('mou')); // contains return boolean value, is (mou) contain at username ? so returns true

  // Strings Manipulation
  print(username.toLowerCase()); // Convert text to lowercase
  print(username.toUpperCase()); // Convert to Uppercase
  print(username.replaceRange(5, 8, 'isco')); // this function have 3 parameters (start, end , replacement value ) for replace text from position start to end

  var username2 = 'Layan';
  print(username2.replaceFirst('a', 'o')); // This function will replace only first char contain 'a' result will be : Loyan also you can use words
  print(username2.replaceAll('a', 'o')); // Same with replaceFirst but this function replace everything not just firs, result : Loyon

  var text = '       Hal#im#ouv';
  print(text.split('#')); // Split string to List
  print(text.replaceAll('#', '')); // Replace every # to empty value '' to remove all hashtags
  print(text.trim()); // This function for remove spaces from any string from start and from end it used for removing white spaces when user typing email or username
  print(text.replaceAll('#', '').trim()); // also you can use two functions at the same time
}