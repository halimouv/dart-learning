void main() {
  // Dart Basics | 21 - Sets

  var a = {2000,2001,2002,2003,2004,2005};
  Set b = {2003,2004,2005,2006,2007,2008};
  
  a.forEach((item) { // ForEach value on Set of a will be printed
    print(item);
  });

  print(b); // Print Set of b

  List c = a.toList(); // Convert type of Set to List
  print('$c ${c.runtimeType}');

  a.add(2025); // Add 2025 in the end of a Set
  print(a);

  a.addAll({2026,2027,2028}); // Add multiple elements one time
  print(a);

print(a.length); // Length of set
print(a.contains(2025));  // Return boolean value
print(a.elementAt(3)); // Value of index 3 in the Set

a.remove(2025);
print(a);

a.clear(); // Clear all data
print(a);

a.addAll({2020,2021,2022,2023,2024,2025,2026,2027,2028});
b.addAll({2024,2025,2026,2027,2028,2029,2030,2031,2048});

print(a.intersection(b)); // Same values
print(b.union(a)); // All Values
print(a.difference(b)); // The values are not the same
}