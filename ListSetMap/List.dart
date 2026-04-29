void main() {
  // ==========================================
  // Creating Different Types of Lists
  // ==========================================
  var mixedList = [
    10,
    20,
    "Hello",
    true,
    [1, 2, 3],
    {"name": "Rony"},
  ];

  print("Mixed List: $mixedList");

  // Integer List
  List<int> numbers = [11, 2, 1, 111, 23];

  print("\n=== List Properties ===");
  print("List: $numbers");
  print("First Element: ${numbers.first}");
  print("Last Element: ${numbers.last}");
  print("Is Empty: ${numbers.isEmpty}");
  print("Is Not Empty: ${numbers.isNotEmpty}");
  print("Length: ${numbers.length}");
  print("Reversed: ${numbers.reversed}");
  print("HashCode: ${numbers.hashCode}");

  // ==========================================
  // Accessing Elements
  // ==========================================
  print("\n=== Accessing Elements ===");
  print("Index 0: ${numbers[0]}");
  print("Index 2: ${numbers[2]}");
  print("ElementAt(3): ${numbers.elementAt(3)}");

  // ==========================================
  // Adding Elements
  // ==========================================
  List<String> letters = ["A", "B", "C", "D"];

  print("\nOriginal List: $letters");

  letters.add("E");
  print("After add('E'): $letters");

  letters.addAll(["F", "G", "H"]);
  print("After addAll(): $letters");

  letters.insert(1, "X");
  print("After insert(1, 'X'): $letters");

  letters.insertAll(3, ["P", "Q"]);
  print("After insertAll(): $letters");

  // ==========================================
  // Removing Elements
  // ==========================================
  letters.remove("B");
  print("\nAfter remove('B'): $letters");

  letters.removeAt(2);
  print("After removeAt(2): $letters");

  letters.removeLast();
  print("After removeLast(): $letters");

  letters.removeRange(1, 3);
  print("After removeRange(1, 3): $letters");

  // ==========================================
  // Updating Elements
  // ==========================================
  letters[0] = "Z";
  print("\nAfter Update: $letters");

  // ==========================================
  // Searching
  // ==========================================
  print("\n=== Searching ===");
  print("Contains 'Z': ${letters.contains('Z')}");
  print("Index of 'D': ${letters.indexOf('D')}");
  print("Last Index of 'D': ${letters.lastIndexOf('D')}");

  // ==========================================
  // Sorting
  // ==========================================
  List<int> marks = [80, 45, 95, 60, 70];

  print("\nBefore Sort: $marks");
  marks.sort();
  print("Ascending: $marks");

  print("Descending: ${marks.reversed.toList()}");

  // ==========================================
  // Sublist
  // ==========================================
  List<int> sub = marks.sublist(1, 4);
  print("\nSublist (1-4): $sub");

  // ==========================================
  // Looping Through List
  // ==========================================
  print("\n=== For Loop ===");
  for (int i = 0; i < marks.length; i++) {
    print("marks[$i] = ${marks[i]}");
  }

  print("\n=== For-in Loop ===");
  for (var value in marks) {
    print(value);
  }

  // ==========================================
  // Functional Methods
  // ==========================================
  print("\n=== Functional Methods ===");

  var doubled = marks.map((e) => e * 2).toList();
  print("Doubled: $doubled");

  var passed = marks.where((e) => e >= 60).toList();
  print("Passed: $passed");

  var total = marks.reduce((a, b) => a + b);
  print("Total: $total");

  // ==========================================
  // Conversion
  // ==========================================
  Set<int> markSet = marks.toSet();
  print("\nConverted to Set: $markSet");

  // ==========================================
  // Clear List
  // ==========================================
  letters.clear();
  print("\nAfter clear(): $letters");

  // ==========================================
  // Fixed Length List
  // ==========================================
  var fixedList = List.filled(5, 0);

  print("\nFixed Length List: $fixedList");

  fixedList[0] = 100;
  fixedList[1] = 200;

  print("After Update: $fixedList");

  // ==========================================
  // Generate List
  // ==========================================
  var generated = List.generate(10, (index) => index * index);

  print("\nGenerated List: $generated");

  // ==========================================
  // Spread Operator
  // ==========================================
  var list1 = [1, 2, 3];
  var list2 = [4, 5, 6];

  var combined = [...list1, ...list2];

  print("\nCombined List: $combined");
}
