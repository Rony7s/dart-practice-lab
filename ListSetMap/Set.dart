void main() {
  // ================================
  // Creating Different Types of Sets
  // ================================
  var mixedSet = {
    1,
    2,
    23,
    "Hello",
    ["A", "B", "A"], // List inside Set
    {11, 22}, // Nested Set
  };

  print("Mixed Set: $mixedSet");

  // Integer Set
  Set<int> numbers = {11, 2, 1, 111, 23};

  print("\n=== Set Properties ===");
  print("Set: $numbers");
  print("First Element: ${numbers.first}");
  print("Last Element: ${numbers.last}");
  print("Is Empty: ${numbers.isEmpty}");
  print("Is Not Empty: ${numbers.isNotEmpty}");
  print("Length: ${numbers.length}");
  print("HashCode: ${numbers.hashCode}");

  // single works only when Set contains exactly one element
  Set<int> singleValue = {100};
  print("Single Element: ${singleValue.single}");

  // ================================
  // String Set Operations
  // ================================
  Set<String> letters = {"A", "B", "C", "D"};

  print("\n=== Original Set ===");
  print(letters);

  // Add one element
  letters.add("F");
  print("\nAfter add('F'):");
  print(letters);

  // Add multiple elements
  letters.addAll(["P", "Q", "R"]);
  print("\nAfter addAll():");
  print(letters);

  // Access element using elementAt()
  print("\nElement at index 2: ${letters.elementAt(2)}");

  // Remove specific element
  letters.remove("A");
  print("\nAfter remove('A'):");
  print(letters);

  // Check element existence
  print("\nContains 'B': ${letters.contains('B')}");
  print("Contains 'Z': ${letters.contains('Z')}");

  // Remove multiple elements
  letters.removeAll({"P", "Q"});
  print("\nAfter removeAll({'P', 'Q'}):");
  print(letters);

  // Iterate through Set
  print("\n=== Loop Through Set ===");
  for (String letter in letters) {
    print(letter);
  }

  // Convert Set to List
  List<String> letterList = letters.toList();
  print("\nConverted to List: $letterList");
  print("List Index 1: ${letterList[1]}");

  // Clear all elements
  letters.clear();
  print("\nAfter clear():");
  print(letters);

  // ================================
  // Set Mathematical Operations
  // ================================
  Set<int> setA = {1, 2, 3, 4};
  Set<int> setB = {3, 4, 5, 6};

  print("\n=== Mathematical Operations ===");
  print("Set A: $setA");
  print("Set B: $setB");

  print("Union: ${setA.union(setB)}");
  print("Intersection: ${setA.intersection(setB)}");
  print("Difference (A-B): ${setA.difference(setB)}");

  // ================================
  // Unmodifiable Set
  // ================================
  final fixedSet = Set.unmodifiable([10, 20, 30]);
  print("\nUnmodifiable Set: $fixedSet");

  // fixedSet.add(40); // Error

  // ================================
  // LinkedHashSet (Maintains Insertion Order)
  // ================================
  Set<String> orderedSet = {"Banana", "Apple", "Mango"};
  print("\nOrdered Set:");
  print(orderedSet);
}
