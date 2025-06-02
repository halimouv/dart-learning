void main() {
  // Dart Basics | 14 - Number Methods
  var numb = -706;

  // is always return boolean values
  print('is that number Odd ? ${numb.isOdd}');
  print('is that number Even ? ${numb.isEven}');
  print('is that number Finite ? ${numb.isFinite}');
  print('is that number  Infinite ? ${numb.isInfinite}');
  print('is that number NaN ? ${numb.isNaN}');
  print('is that number Negative ? ${numb.isNegative}');

  // Number Manipulation :
  var numb2 = -34.7;
  print('${numb2.abs()}'); // Returns the absolute value
  print('${numb2.floor()}'); // Returns the largest integer less than or equal to the number
  print('${numb2.truncate()}'); // Returns the integer part by removing the decimal without rounding
  print('${numb2.round()}'); // Rounds to the nearest integer
  print('${numb2.ceil()}'); // Returns the smallest integer greater than or equal to the number
}