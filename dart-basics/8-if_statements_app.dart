void main() {
   // Dart Basics | 8 - If Statements Application
   /*
   Small App to calculate student degree
   Modules : Math | English | Physics
   Factors : Math : 6 | English : 4 | Physics : 5
   Points of Student : Math : 14 | English : 16.5 | Physics : 15.75
   Degree Conditions : [15 ==> 20] : A , [10 ==> 15] : B , [5 ==> 10] : C , [0 ==> 5 ( <5)] : F
    */

   // Lists Method
   const List modules = ['Math','English','Physics'];
   const List factors = [6,4,5];
   const List studentPoints = [0,0.5,15.75];

   // First thing we will calculate student result
   // Easy Method
   var studentResult = ((factors[0] * studentPoints[0]) + (factors[1] * studentPoints[1]) + (factors[2] * studentPoints[2]))/15 ;

   // Advanced Method with Loops (You can skip this)
   double studentResultLoops = 0;
   double factorsLoop =0;
   for (var i=0;i<modules.length; i++) {
      factorsLoop += factors[i];
      studentResultLoops += (factors[i] * studentPoints[i]);
      if (i == modules.length-1) {
         studentResultLoops /= factorsLoop;
      }
   }

// .toStringAsFixed(2) is used to reduce a number to 2 decimal places as a string
   print(studentResult.toStringAsFixed(2)); // Without Loop
   print(studentResultLoops.toStringAsFixed(2)); // With Loop, same result but with loops it will be more flexible

   // If Conditions
   if (studentResult >= 15) {
      if (studentResult >= 17.5) {
         print('This student with ${studentResult.toStringAsFixed(2)} got A+');
      } else {
         print('This student with ${studentResult.toStringAsFixed(2)} got A-');
      }
   } else if (studentResult >= 10) {
      if (studentResult >= 12.5) {
         print('This student with ${studentResult.toStringAsFixed(2)} got B+');
      } else {
         print('This student with ${studentResult.toStringAsFixed(2)} got B-');
      }
   } else if (studentResult >= 5) {
      if (studentResult >= 7.5) {
         print('This student with ${studentResult.toStringAsFixed(2)} got C+');
      } else {
         print('This student with ${studentResult.toStringAsFixed(2)} got C-');
      }
   } else {
      print('This student with ${studentResult.toStringAsFixed(2)} got F');
   }
}
