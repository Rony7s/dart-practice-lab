# 📘 Dart List, Set & Map Practice Problems & Solutions

> 36 beginner-to-intermediate Dart problems covering `List`, `Set`, and `Map` data structures, with runnable solutions.

![Dart](https://img.shields.io/badge/Dart-Collections-blue?style=for-the-badge&logo=dart)
![Practice](https://img.shields.io/badge/Practice-36%20Problems-success?style=for-the-badge)

---

## 📑 Table of Contents

<table>
<tr>
<td valign="top">

### 🔹 List Problems
- [1. Sum of List Elements](#1-sum-of-list-elements)
- [2. Find Largest Number](#2-find-largest-number)
- [3. Reverse a List](#3-reverse-a-list)
- [4. Count Even and Odd Numbers](#4-count-even-and-odd-numbers)
- [5. Remove Duplicate Values](#5-remove-duplicate-values)
- [6. Second Largest Element](#6-second-largest-element)
- [7. Merge Two Lists](#7-merge-two-lists)
- [8. Search an Element](#8-search-an-element)
- [9. Sort List in Ascending Order](#9-sort-list-in-ascending-order)
- [10. Rotate List](#10-rotate-list)

</td>
<td valign="top">

### 🔹 Set Problems
- [1. Create a Set](#set-1-create-a-set)
- [2. Check Unique Elements](#set-2-check-unique-elements)
- [3. Union of Two Sets](#set-3-union-of-two-sets)
- [4. Intersection of Sets](#set-4-intersection-of-sets)
- [5. Difference Between Sets](#set-5-difference-between-sets)
- [6. Remove Duplicate Characters](#set-6-remove-duplicate-characters)
- [7. Find Common Friends](#set-7-find-common-friends)
- [8. Subset Checking](#set-8-subset-checking)

</td>
</tr>
<tr>
<td valign="top">

### 🔹 Map Problems
- [1. Student Marks System](#map-1-student-marks-system)
- [2. Word Frequency Counter](#map-2-word-frequency-counter)
- [3. Find Highest Value](#map-3-find-highest-value)
- [4. Check Key Exists](#map-4-check-key-exists)
- [5. Merge Two Maps](#map-5-merge-two-maps)
- [6. Character Frequency Counter](#map-6-character-frequency-counter)
- [7. Phone Book Application](#map-7-phone-book-application)
- [8. Employee Database](#map-8-employee-database)

</td>
<td valign="top">

### 🔹 Advanced Problems
- [1. Find Missing Number](#adv-1-find-missing-number-in-a-list)
- [2. Remove All Occurrences](#adv-2-remove-all-occurrences-of-an-element)
- [3. Find Duplicate Elements](#adv-3-find-duplicate-elements-in-a-list)
- [4. Count Occurrences of Each Element](#adv-4-count-occurrences-of-each-element-in-a-list)
- [5. Symmetric Difference of Sets](#adv-5-symmetric-difference-of-two-sets)
- [6. Check Sets are Equal](#adv-6-check-whether-two-sets-are-equal)
- [7. Group Words by Length](#adv-7-group-words-by-length-using-a-map)
- [8. Sort a Map by Values](#adv-8-sort-a-map-by-values)
- [9. Invert a Map](#adv-9-invert-a-map-swap-keys-and-values)
- [10. Student Management System](#adv-10-dictionary-based-student-management-system)

</td>
</tr>
</table>

---

# 📋 List Practice Problems

---

## 1. Sum of List Elements

### Question
Create a list of integers and calculate the sum of all elements.

### Solution
```dart
void main() {
  List<int> numbers = [10, 20, 30, 40, 50];
  int sum = 0;

  for (int num in numbers) {
    sum += num;
  }

  print("Sum of List Elements: $sum");
}
```

---

## 2. Find Largest Number

### Question
Take a list of numbers and print the largest number.

### Solution
```dart
void main() {
  List<int> numbers = [12, 45, 7, 89, 34];
  int largest = numbers[0];

  for (int num in numbers) {
    if (num > largest) {
      largest = num;
    }
  }

  print("Largest Number: $largest");
}
```

---

## 3. Reverse a List

### Question
Reverse a list without using the built-in `reversed()` method.

### Solution
```dart
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> reversedList = [];

  for (int i = numbers.length - 1; i >= 0; i--) {
    reversedList.add(numbers[i]);
  }

  print("Reversed List: $reversedList");
}
```

---

## 4. Count Even and Odd Numbers

### Question
Given a list of integers, count how many even and odd numbers exist.

### Solution
```dart
void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8];
  int evenCount = 0, oddCount = 0;

  for (int num in numbers) {
    if (num % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  print("Even Numbers: $evenCount");
  print("Odd Numbers: $oddCount");
}
```

---

## 5. Remove Duplicate Values

### Question
Remove duplicate elements from a list.

### Solution
```dart
void main() {
  List<int> numbers = [1, 2, 2, 3, 4, 4, 5];
  List<int> unique = [];

  for (int num in numbers) {
    if (!unique.contains(num)) {
      unique.add(num);
    }
  }

  print("List Without Duplicates: $unique");
}
```

---

## 6. Second Largest Element

### Question
Find the second largest number in a list.

### Solution
```dart
void main() {
  List<int> numbers = [10, 25, 8, 25, 17];
  int largest = -999999, secondLargest = -999999;

  for (int num in numbers) {
    if (num > largest) {
      secondLargest = largest;
      largest = num;
    } else if (num > secondLargest && num != largest) {
      secondLargest = num;
    }
  }

  print("Largest: $largest");
  print("Second Largest: $secondLargest");
}
```

---

## 7. Merge Two Lists

### Question
Merge two lists into a single list without duplicates.

### Solution
```dart
void main() {
  List<int> listA = [1, 2, 3, 4];
  List<int> listB = [3, 4, 5, 6];
  List<int> merged = [...listA];

  for (int num in listB) {
    if (!merged.contains(num)) {
      merged.add(num);
    }
  }

  print("Merged List: $merged");
}
```

---

## 8. Search an Element

### Question
Check whether a specific value exists in a list.

### Solution
```dart
void main() {
  List<String> fruits = ["apple", "banana", "mango", "orange"];
  String target = "mango";
  bool found = false;

  for (String fruit in fruits) {
    if (fruit == target) {
      found = true;
      break;
    }
  }

  print(found ? "$target found in the list" : "$target not found");
}
```

---

## 9. Sort List in Ascending Order

### Question
Sort a list manually without using the built-in `sort()` function.

### Solution
```dart
void main() {
  List<int> numbers = [5, 2, 9, 1, 7];

  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = 0; j < numbers.length - 1 - i; j++) {
      if (numbers[j] > numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }

  print("Sorted List: $numbers");
}
```

---

## 10. Rotate List

### Question
Rotate a list by N positions to the left or right.

### Solution
```dart
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int n = 2;
  n = n % numbers.length;

  // Rotate Left
  List<int> rotatedLeft = [
    ...numbers.sublist(n),
    ...numbers.sublist(0, n),
  ];

  // Rotate Right
  List<int> rotatedRight = [
    ...numbers.sublist(numbers.length - n),
    ...numbers.sublist(0, numbers.length - n),
  ];

  print("Rotated Left by $n: $rotatedLeft");
  print("Rotated Right by $n: $rotatedRight");
}
```

---

# 🔢 Set Practice Problems

---

## Set-1. Create a Set

### Question
Create a set of strings and print all values.

### Solution
```dart
void main() {
  Set<String> colors = {"Red", "Green", "Blue"};

  print("Set Values:");
  for (String color in colors) {
    print(color);
  }
}
```

---

## Set-2. Check Unique Elements

### Question
Use a set to determine whether all elements in a list are unique.

### Solution
```dart
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  Set<int> uniqueCheck = numbers.toSet();

  bool allUnique = uniqueCheck.length == numbers.length;

  print(allUnique ? "All elements are unique" : "List has duplicates");
}
```

---

## Set-3. Union of Two Sets

### Question
Find the union of two sets.

### Solution
```dart
void main() {
  Set<int> setA = {1, 2, 3};
  Set<int> setB = {3, 4, 5};

  Set<int> union = setA.union(setB);

  print("Union: $union");
}
```

---

## Set-4. Intersection of Sets

### Question
Find the common elements between two sets.

### Solution
```dart
void main() {
  Set<int> setA = {1, 2, 3, 4};
  Set<int> setB = {3, 4, 5, 6};

  Set<int> intersection = setA.intersection(setB);

  print("Intersection: $intersection");
}
```

---

## Set-5. Difference Between Sets

### Question
Find elements present in Set A but not in Set B.

### Solution
```dart
void main() {
  Set<int> setA = {1, 2, 3, 4};
  Set<int> setB = {3, 4, 5, 6};

  Set<int> difference = setA.difference(setB);

  print("Elements in A but not in B: $difference");
}
```

---

## Set-6. Remove Duplicate Characters

### Question
Given a string, print only unique characters using a set.

### Solution
```dart
void main() {
  String text = "programming";
  Set<String> uniqueChars = {};

  for (int i = 0; i < text.length; i++) {
    uniqueChars.add(text[i]);
  }

  print("Unique Characters: $uniqueChars");
}
```

---

## Set-7. Find Common Friends

### Question
Use sets to determine mutual friends between two users.

### Solution
```dart
void main() {
  Set<String> userAFriends = {"Rony", "Ahmed", "Mim", "Nadim"};
  Set<String> userBFriends = {"Mim", "Karim", "Nadim", "Sara"};

  Set<String> mutualFriends = userAFriends.intersection(userBFriends);

  print("Mutual Friends: $mutualFriends");
}
```

---

## Set-8. Subset Checking

### Question
Check whether one set is a subset of another.

### Solution
```dart
void main() {
  Set<int> setA = {2, 4};
  Set<int> setB = {1, 2, 3, 4, 5};

  bool isSubset = setA.every((element) => setB.contains(element));

  print(isSubset ? "Set A is a subset of Set B" : "Set A is not a subset of Set B");
}
```

---

# 🗺️ Map Practice Problems

---

## Map-1. Student Marks System

### Question
Create a map containing student names and marks.

### Solution
```dart
void main() {
  Map<String, int> studentMarks = {
    "Rony": 85,
    "Ahmed": 92,
    "Mim": 78,
  };

  studentMarks.forEach((name, marks) {
    print("$name: $marks");
  });
}
```

---

## Map-2. Word Frequency Counter

### Question
Count how many times each word appears in a sentence using a map.

### Solution
```dart
void main() {
  String sentence = "dart is fun and dart is powerful";
  List<String> words = sentence.split(" ");
  Map<String, int> frequency = {};

  for (String word in words) {
    frequency[word] = (frequency[word] ?? 0) + 1;
  }

  print("Word Frequency: $frequency");
}
```

---

## Map-3. Find Highest Value

### Question
Find the student with the highest marks from a map.

### Solution
```dart
void main() {
  Map<String, int> studentMarks = {
    "Rony": 85,
    "Ahmed": 92,
    "Mim": 78,
  };

  String topStudent = studentMarks.keys.first;
  int topMarks = studentMarks.values.first;

  studentMarks.forEach((name, marks) {
    if (marks > topMarks) {
      topMarks = marks;
      topStudent = name;
    }
  });

  print("Top Student: $topStudent with $topMarks marks");
}
```

---

## Map-4. Check Key Exists

### Question
Check whether a specific key exists in a map.

### Solution
```dart
void main() {
  Map<String, int> studentMarks = {"Rony": 85, "Ahmed": 92};
  String key = "Mim";

  print(studentMarks.containsKey(key)
      ? "$key exists in the map"
      : "$key does not exist in the map");
}
```

---

## Map-5. Merge Two Maps

### Question
Merge two maps into one.

### Solution
```dart
void main() {
  Map<String, int> mapA = {"a": 1, "b": 2};
  Map<String, int> mapB = {"b": 3, "c": 4};

  Map<String, int> merged = {...mapA, ...mapB};

  print("Merged Map: $merged");
}
```

---

## Map-6. Character Frequency Counter

### Question
Count the frequency of each character in a string using a map.

### Solution
```dart
void main() {
  String text = "programming";
  Map<String, int> frequency = {};

  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    frequency[char] = (frequency[char] ?? 0) + 1;
  }

  print("Character Frequency: $frequency");
}
```

---

## Map-7. Phone Book Application

### Question
Create a phone book using maps with add, search, update, and delete operations.

### Solution
```dart
class PhoneBook {
  Map<String, String> contacts = {};

  void addContact(String name, String number) {
    contacts[name] = number;
    print("Added: $name -> $number");
  }

  void searchContact(String name) {
    if (contacts.containsKey(name)) {
      print("$name: ${contacts[name]}");
    } else {
      print("$name not found");
    }
  }

  void updateContact(String name, String newNumber) {
    if (contacts.containsKey(name)) {
      contacts[name] = newNumber;
      print("Updated: $name -> $newNumber");
    } else {
      print("$name not found");
    }
  }

  void deleteContact(String name) {
    if (contacts.remove(name) != null) {
      print("Deleted: $name");
    } else {
      print("$name not found");
    }
  }
}

void main() {
  PhoneBook book = PhoneBook();

  book.addContact("Rony", "017xxxxxxxx");
  book.addContact("Mim", "018xxxxxxxx");

  book.searchContact("Rony");
  book.updateContact("Rony", "019xxxxxxxx");
  book.deleteContact("Mim");

  book.searchContact("Mim");
}
```

---

## Map-8. Employee Database

### Question
Store employee information and perform update, delete, and search operations.

### Solution
```dart
class EmployeeDatabase {
  Map<int, String> employees = {};

  void addEmployee(int id, String name) {
    employees[id] = name;
    print("Employee Added: $id -> $name");
  }

  void searchEmployee(int id) {
    print(employees.containsKey(id)
        ? "Employee $id: ${employees[id]}"
        : "Employee $id not found");
  }

  void updateEmployee(int id, String newName) {
    if (employees.containsKey(id)) {
      employees[id] = newName;
      print("Employee $id updated to $newName");
    } else {
      print("Employee $id not found");
    }
  }

  void deleteEmployee(int id) {
    print(employees.remove(id) != null
        ? "Employee $id deleted"
        : "Employee $id not found");
  }
}

void main() {
  EmployeeDatabase db = EmployeeDatabase();

  db.addEmployee(1, "Rony");
  db.addEmployee(2, "Ahmed");

  db.searchEmployee(1);
  db.updateEmployee(2, "Ahmed Khan");
  db.deleteEmployee(1);

  db.searchEmployee(1);
}
```

---

# 🚀 Additional Advanced Practice Problems

---

## Adv-1. Find Missing Number in a List

### Question
Find the missing number in a list (e.g., a list of numbers from 1 to N with one missing).

### Solution
```dart
void main() {
  List<int> numbers = [1, 2, 3, 5, 6]; // 4 is missing
  int n = numbers.length + 1;

  int expectedSum = (n * (n + 1)) ~/ 2;
  int actualSum = 0;

  for (int num in numbers) {
    actualSum += num;
  }

  print("Missing Number: ${expectedSum - actualSum}");
}
```

---

## Adv-2. Remove All Occurrences of an Element

### Question
Remove all occurrences of a given element from a list.

### Solution
```dart
void main() {
  List<int> numbers = [1, 2, 3, 2, 4, 2, 5];
  int target = 2;
  List<int> result = [];

  for (int num in numbers) {
    if (num != target) {
      result.add(num);
    }
  }

  print("List After Removing $target: $result");
}
```

---

## Adv-3. Find Duplicate Elements in a List

### Question
Find all duplicate elements present in a list.

### Solution
```dart
void main() {
  List<int> numbers = [1, 2, 3, 2, 4, 5, 1];
  Set<int> seen = {};
  Set<int> duplicates = {};

  for (int num in numbers) {
    if (!seen.add(num)) {
      duplicates.add(num);
    }
  }

  print("Duplicate Elements: $duplicates");
}
```

---

## Adv-4. Count Occurrences of Each Element in a List

### Question
Count how many times each element occurs in a list.

### Solution
```dart
void main() {
  List<String> items = ["apple", "banana", "apple", "mango", "banana", "apple"];
  Map<String, int> countMap = {};

  for (String item in items) {
    countMap[item] = (countMap[item] ?? 0) + 1;
  }

  print("Occurrences: $countMap");
}
```

---

## Adv-5. Symmetric Difference of Two Sets

### Question
Find the symmetric difference of two sets (elements not common to both).

### Solution
```dart
void main() {
  Set<int> setA = {1, 2, 3, 4};
  Set<int> setB = {3, 4, 5, 6};

  Set<int> symmetricDiff = setA.difference(setB).union(setB.difference(setA));

  print("Symmetric Difference: $symmetricDiff");
}
```

---

## Adv-6. Check Whether Two Sets are Equal

### Question
Check whether two sets contain exactly the same elements.

### Solution
```dart
void main() {
  Set<int> setA = {1, 2, 3};
  Set<int> setB = {3, 2, 1};

  bool isEqual = setA.length == setB.length && setA.containsAll(setB);

  print(isEqual ? "Sets are equal" : "Sets are not equal");
}
```

---

## Adv-7. Group Words by Length Using a Map

### Question
Group a list of words by their length using a map.

### Solution
```dart
void main() {
  List<String> words = ["cat", "tree", "dog", "house", "sun", "moon"];
  Map<int, List<String>> grouped = {};

  for (String word in words) {
    grouped.putIfAbsent(word.length, () => []).add(word);
  }

  print("Grouped by Length: $grouped");
}
```

---

## Adv-8. Sort a Map by Values

### Question
Sort a map by its values instead of its keys.

### Solution
```dart
void main() {
  Map<String, int> marks = {
    "Rony": 85,
    "Ahmed": 92,
    "Mim": 78,
  };

  var sortedEntries = marks.entries.toList()
    ..sort((a, b) => a.value.compareTo(b.value));

  print("Sorted Map by Values:");
  for (var entry in sortedEntries) {
    print("${entry.key}: ${entry.value}");
  }
}
```

---

## Adv-9. Invert a Map (Swap Keys and Values)

### Question
Swap the keys and values of a map.

### Solution
```dart
void main() {
  Map<String, int> original = {"a": 1, "b": 2, "c": 3};
  Map<int, String> inverted = {};

  original.forEach((key, value) {
    inverted[value] = key;
  });

  print("Inverted Map: $inverted");
}
```

---

## Adv-10. Dictionary-Based Student Management System

### Question
Create a small student management system using a map (dictionary) as the data store, supporting add, update, delete, and display operations.

### Solution
```dart
class StudentManagementSystem {
  Map<int, Map<String, dynamic>> students = {};

  void addStudent(int id, String name, double cgpa) {
    students[id] = {"name": name, "cgpa": cgpa};
    print("Student Added: $id -> $name");
  }

  void updateStudent(int id, double newCgpa) {
    if (students.containsKey(id)) {
      students[id]!["cgpa"] = newCgpa;
      print("Updated CGPA for $id");
    } else {
      print("Student $id not found");
    }
  }

  void deleteStudent(int id) {
    print(students.remove(id) != null
        ? "Student $id removed"
        : "Student $id not found");
  }

  void showStudent(int id) {
    if (students.containsKey(id)) {
      print("ID: $id, Name: ${students[id]!["name"]}, CGPA: ${students[id]!["cgpa"]}");
    } else {
      print("Student $id not found");
    }
  }

  void showAllStudents() {
    students.forEach((id, info) {
      print("ID: $id, Name: ${info["name"]}, CGPA: ${info["cgpa"]}");
    });
  }
}

void main() {
  StudentManagementSystem sms = StudentManagementSystem();

  sms.addStudent(1, "Rony", 3.85);
  sms.addStudent(2, "Mim", 3.92);

  sms.showAllStudents();

  sms.updateStudent(1, 3.95);
  sms.deleteStudent(2);

  sms.showAllStudents();
}
```

---

# 📚 Topics Covered

- List traversal, searching, sorting, and rotation
- Removing duplicates manually and with `Set`
- Set operations: union, intersection, difference, symmetric difference, subset/equality checks
- Map-based counters (word & character frequency)
- Map-based mini systems: Phone Book, Employee Database, Student Management
- Manual algorithm implementation (no built-in shortcuts where the problem asks for it)
