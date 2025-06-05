void main() {
  // Dart Basics | 22 - Maps

  var map1 = {2009:'Android 1.0',2011:'Android 4.0',2014:'Android 5.0–5.1',2017:'Android 8.0–8.1',2022:"Android 13"};
  Map map2 = {
    2007:'iPhone OS 1',
    2010:'iOS 4',
    2013:'iOS 7',
    2017:'iOS 11',
    2024:'iOS 18'
  };

  // Print Maps
  map1.forEach((key, value) {
    print('Version of $value was released at $key');
  });

  // Print all Map
  print(map2);
  
  print(map1[2014]); // Use only keys don't use index as Lists!
  print(map2.keys); // Print all keys on map2
  print(map2.values);
  print(map2.entries);

  // Add key & value on Maps
  map1.addAll({2023:'Android 14'});
  print(map1);

  // Contains Conditions

  print(map2.containsKey(2024)); // is map2 contain key named 2024? that should return boolean value
  print(map2.containsValue('iOS 19')); // there's any key on map2 contain value of 'iOS 19' ?

  // Remove from Maps
  map1.remove(2017); // Remove key with value
  print(map1);
  map1.clear(); // Clear all map
  print(map1);
}