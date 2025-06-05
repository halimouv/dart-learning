void main() {
  // Dart Basics | 18 - Lists

  var list1 = [212,213,214,215,216,217,218];
  print(list1); // Output of list
  print(list1[0]); // First value on list (212)
  print(list1[3]); // Fourth value on list (215)
  print(list1.first);// list1.first = list1
  // (list1[list1.length-1] = list1.last
  print(list1[list1.length-1]); // Last value on list1 (218)
  print(list1.last); // Last value on list1 (218)
  print(list1.reversed); // List Reversed
  list1[1] = 777; // Replace value of index 1 to 777
  print(list1);

  list1.add(2025+5); // Add 2030 on list1 (last index)
  print(list1);

  list1.addAll([2025-514,4,4]); // Add more than one value at the same time
  print(list1);

  list1.insert(0, 718); // Add 718 in the first index (0)
  print(list1);

  list1.insertAll(1, [911,993,1995]); // Insert more than value on specific index
  print(list1);

  list1.remove(911); // Remove value not position (index)
  print(list1);

  list1.removeAt(0); // Remove at index (0)
  print(list1);

  list1.removeLast(); // This will remove last index value on the list
  print(list1);

  list1.removeRange(0, 2); // Remove values from range [0 to 2]
  print(list1); // 993 1995 Removed

  list1.replaceRange(4, 6, [44,22]); // Replace values from selected range
  print(list1);
}