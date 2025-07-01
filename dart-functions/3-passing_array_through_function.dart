void main () {
  // Dart Functions | 3- Passing Array through Function

  // List of a it's dynamic list
  List a = ['Halimouv','Dart','Flutter',481,911];

  // List of b it's String list because contain only string values
  List<String> b = ['Dart','Java','Kotlin','Javascript'];

  // This function of (funcList) accept dynamic lists (any list) and print everything on the list
  funcList(a);

  // funcList2 accept only List with element type string make sure your list contain only Strings
  // Also you can change selected type in function below
  funcList2(b);

  // We can also pass Sets inside functions!
  Set studentResults = {75,95,14,66,74};

  // Call function and pass studentResults to print them
  funSet(studentResults);

  // Also we can convert Lists to Set if you want to print Lists
  funSet(b.toSet());

  // Same thing with Set => List
  funcList(studentResults.toList());

  // I commented line below because in funcList2 pass only List String and my studentResult Set contain int values not strings
  //funcList2(studentResults.toList());

  Set<String> studentNames = {'Walid','Ali','Saad','Youcef','Khalil','Mohamed','Anwar','Samoil'};
  // Now we can use funcList2 because we convert studentNames from Set to List also our list contain String values
  funcList2(studentNames.toList());

  // Now I will create Set contain ages of my students and I will pass it to funSet2
  // Attention : funSet2 accept only Set with int values
  Set<int> studnetsAge = {30,42,25,22,26,45,38};
  funSet2(studnetsAge);

  // We've map contain <int,String> (Year,Android Version)
  Map androidVersions ={
    2008:'Android 1.0',
    2009:'Android 2.0',
    2011:'Android 4.0',
    2017:'Android 8.1',
    2019:'Android 10',
    2024:'Android 15'
  };
  // Let's trying pass androidVersions map to funMap and see result
  funMap(androidVersions);
}

// Pass any list on this function
funcList (List mylist) {
  for (var i = 0; i < mylist.length;i++) {
    print('[Item ${i+1}] - ${mylist[i]}');
  }
}

// Only String List accepted here also you can change <String> if you have another list type
funcList2 (List<String> mystrlist) {
  for (var i = 0; i < mystrlist.length;i++) {
    print('[Item ${i+1}] - ${mystrlist[i]}');
  }
}

// funSet accept any Set
funSet (Set myset) {
  myset.forEach((item){
    print(item);
  });
}

// funSet2 accept only Set with values type int
funSet2 (Set<int> ages) {
  for (var age in ages) {
    print(age);
  }
}

// This funMap accept only maps with dynamic values (any map)
funMap (Map android) {
  android.forEach((year,android){
    print('In $year released : $android');
  });
}