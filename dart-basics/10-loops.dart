void main() {
  // Dart Basics | 10 - Loops

  /*
  4 Types Of Loops :
  ==> For Loop
  ==> While Loop
  ==> Do-While Loop
  ==> For-In Loop
   */

  // For Loop :
  for (var i=1 /* Initial value */ ;
           i<= 10 /* Condition if true will continue */;
           i++ /* Increment: increase i by 1 after each iteration */) {
    // Print this 10 times
    print('$i - Hello Halimouv');
  }

  // While Loop :
  // In While Loops first thing declare variable of iteration
  var j = 0;
  while (j <10 /* Condition : true = continue */) {
    j++;
    // Same result with For Loop
    print('$j - Hello Halimouv');
  }

  // Do-While Loop :
  // Same with While Loop but this do will run code first and than check if condition true or false
  var x = 20;
  do {
    // This code will print only one time
    print('Hello buddy!');
    // If x here equal 20 this code will run forever because condition will be always true
  } while(x == 10);

  // For-In Loop :
  List winners = ['Halimouv', 'Derragui','Ahmed'];
  // var winner contain name of winner in winners list
  for (var winner in winners) {
    print(winner);
  }

  // Bonus :
  // You can break any loop if you want something
  // For example I will create list of data and we try to find some user
  List users = ['Ahmed','Yacine','Derragui','John','Halimouv','Kendrick','Mohammed Bin Salman','Yasser','Amjed'];
  
  for (var user in users) {
    print(user);
    if (user == 'Halimouv') {
      print('User : $user founded at ${users.indexOf(user)+1 }'); // Users of app can't understand 0 in lists so add 1 :)
      break; // This will stop this loop
    }
  }
}