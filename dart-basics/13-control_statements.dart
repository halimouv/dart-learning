void main() {
  // Dart Basics | 13 - Control Statements
  /*
  Control Statements is for control anything by condition
  For example you can break or continue loop by condition
   */

  // Break Loop if condition true :
  // Skip & Break Chapter 2
  for (var i =1 ; i<4; i++) {
    for (var j = 1 ; j <4; j++)
      if (i == 2) {
        break;
    } else {
        print('$i.$j - Chapter Of Book :');
      }
  }

  // As you see Chapter 2 Removed but Loop is continue ? If you want break main loop use:
  // First thing declare loop (type anything) for example loop1

  loop1:
  for (var i =1 ; i<4; i++) {
    for (var j = 1 ; j <4; j++)
      if (i == 2) {
        break loop1; // Main Loop will brake :)
      } else {
        print('$i.$j - Chapter Of Book :');
      }
  }

  // Now let's dealing with one loop
  for (var i =1 ; i<20; i++) {
      if (i == 4) {
        break ;
      } else {
        print('$i. - Chapter Of Book :');
      }
  }
  /* In this case all loop will brake because there's only one loop so what if
     I want only skip Chapter 4 ?
     So brake; is not recommended here
     The Solution use : continue;
   */
  for (var i =1 ; i<10; i++) {
    if (i == 4) {
      // Chapter 4 Skipped and loop still continue :)
      continue ;
    } else {
      print('$i. - Chapter Of Book :');
    }
  }
}