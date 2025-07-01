import 'dart:io';
void main() {
  // Dart Basics | App 17 | Simple Alarm Clock

  /*
  Build a simple alarm clock simulator.

  Steps:
  1. Ask the user to enter the current time (in 24-hour format, e.g., 13 for 1 PM).
  2. Ask the user to set an alarm time (also in 24-hour format).
  3. Compare the times:
     - If alarm time > current time → calculate hours left.
     - If alarm time <= current time → assume it’s for the next day.

  Example Output:
  Current time: 22
  Alarm time: 6
  Output: Alarm set for 8 hour(s) from now.

  Bonus:
  - Validate that input is between 0 and 23.
  - Handle cases where alarm is at the same hour as current time.

  Focus:
  - Input validation
  - Arithmetic (difference in hours)
  - Clean and meaningful user output
  */

  print('[-] Current time is ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}');
  int alarmHour;
  int alarmMinute;
  int remAlarmHour;
  int remAlarmMinute;

  while(true) {
    try {
      stdout.write('Set an alarm time in hours : ');
      alarmHour = int.parse(stdin.readLineSync()!);
      if (alarmHour >= 1 && alarmHour <= 12 && alarmHour >= DateTime.now().hour) {
        break;
      } else {
        print('Alaram hour out of range!');
      }
    } catch(e) {
      print(e);
    }
  }

  while(true) {
    try {
      stdout.write('Set an alarm time in minute : ');
      alarmMinute = int.parse(stdin.readLineSync()!);
      if (alarmMinute >= 0 && alarmMinute <= 59) {
        break;
      } else {
        print('Alaram minute out of range!');
      }
    } catch(e) {
      print(e);
    }
  }

  remAlarmHour = alarmHour - DateTime.now().hour;
  if (alarmMinute >= DateTime.now().minute) {
    remAlarmMinute = DateTime.now().minute - alarmMinute;
  } else {
    remAlarmHour -=1;
    remAlarmMinute = (alarmMinute -DateTime.now().minute) + 60;
  }
  
  print('Your alarm is $alarmHour:$alarmMinute - $remAlarmHour Hours and $remAlarmMinute Minutes left');
}