import 'dart:io';
void main() {
  // Dart Basics | App 5 | To-Do List Manager

  /*
  Ask the user how many tasks they want to add today.

  Steps:
  1. Take the number of tasks from the user.
  2. Loop and collect each task (one by one).
  3. After collecting, print all tasks using nice formatting:

  Example Output:
  [Task 1] Study
  [Task 2] Workout
  [Task 3] Eat

  Focus:
  - Loops
  - Lists
  - User input
  - Clear structured output
  */

  List tasks = [];

  stdout.write('Number of all tasks : ');
  int tasksCount = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < tasksCount ; i++) {
    stdout.write('[Task - ${i+1}] : ');
    tasks.add(stdin.readLineSync()!);
  }

  print('Your tasks today is :');
  for ( var task in tasks) {
    print('[-] $task');
  }
}