void main () {
  // Dart Functions | 2- Optional, Default Parameters

  // Sum 3 numbers and third number is optional !!! Make sure optional value have initial value = 0 because we can't sum numbers with null
  sum3(5,2);
  // You can add value for c
  sum3(5,5,3); // c = 3

  // This function of contactInfo have 2 required parameters full name is String and lastname is dynamic
  // and age,phone,country is optional values also phone with initial value = 0
  contactInfo('Halim', 'ouv', age:26,phone:777444666,country: 'Algeria');
}

// Sum function with optional value
sum3 (a,b,[c=0]) {
  print(a+b+c);
}

// Function with multiple parameters (2 required, 3 optional)
contactInfo (String fullname,lastname,{age,phone=0,country}) {
  print('Full Name : $fullname');
  print('Last Name : $lastname');
  print('Age : $age');
  print('Phone : $phone');
  print('Country : $country');
}