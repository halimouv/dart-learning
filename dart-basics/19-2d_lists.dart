void main() {
  // Dart Basics | 19 - 2D Lists

  var dataList = [1,2,3,4,5,6];

  for (var i = 0 ; i < dataList.length ; i++) {
    print(dataList[i]); // Print all elements inside dataList
  }

  // List inside List :
  var usersBirthday = [[2000,07,15],[2000,12,14],[1995,08,30]];
  for( var userBirth in usersBirthday) {
    for ( var birth in userBirth) {
      print(birth);
    }
  print('###### BIRTH DAY ######');
  }
}