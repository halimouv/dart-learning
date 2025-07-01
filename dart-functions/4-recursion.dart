void main() {
  // Dart Functions | 3- Recursion

  // We've called func1 with value a=1
  func1(1);
}

// This function of (func1) receive integer value called a
func1(int a) {
  // if a not equal 5 that's mean condition is true
  if (a != 5 ){
    print(a);
    // Here I add 1 to original value and this function will repeat too many times
    // until a = 5 than this function will return (stop)
    func1(a+1);
  } else {
    return;
  }
}