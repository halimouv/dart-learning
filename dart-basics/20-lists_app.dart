import 'dart:io';
void main() {
  // Dart Basics | 20 - Lists Application
  
  /*
  To-Do List Application
  First thing we will create list contain task & task status ( Completed : True, Not Complete Tasks : False )
  For Example = ['TaskOne','true'],['TaskTwo,'false']
  Then
  ====> Update Status of Tasks
  ====> Print List of tasks with status
   */

  var todoTasks = []; // Declare toDoList Tasks

  // Number of To Do Tasks
  print('Entre number of ToDo Tasks :');
  var todoTotalTasks = stdin.readLineSync();
  print('## Please add all tasks ##');

  // Naming Tasks
  for (var i = 0 ; i <num.parse(todoTotalTasks!); i++) {
    print('Task Number ${i+1} :');
    var taskID= stdin.readLineSync();
    todoTasks.add(['$taskID','false']); // I will keep it false until user update status ;)
  }
  print(todoTasks); // Checking All Tasks & False Status
  // Update Status
  for (var i=0; i < todoTasks.length;i++) {
    print('Is ${todoTasks[i][0]} Completed ? (y/n)');
    var taskStatus = stdin.readLineSync();
    if (taskStatus == 'y') {
      todoTasks[i][1] = 'true';
    } else if (taskStatus == 'f'){
      todoTasks[i][1] = 'false';
    }
  }
  print(todoTasks); // Checking All Tasks & Status Updated

  // Print Final ToDo List

  for (var i=0; i < todoTasks.length;i++) {
    print('[$i] - ${todoTasks[i][0]} : ${todoTasks[i][1] == 'true' /* Make sure type is string not boolean */ ? '[✓]':'[X]'} ');
  }

  // You can enhance this code by adding try catch and while loop if user put wrong values
}