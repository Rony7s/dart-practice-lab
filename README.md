# 🚀 dart-practice-lab

![Visitors](https://api.visitorbadge.io/api/visitors?path=https%3A%2F%2Fgithub.com%2Frony7s%2Fdart-practice-lab&label=Visitors&countColor=%2300ff00)

> My Dart learning journey including core concepts, problem-solving, and real-world mini projects.

![Dart](https://img.shields.io/badge/Dart-Learning-blue?style=for-the-badge&logo=dart)
![OOP](https://img.shields.io/badge/OOP-Practice-success?style=for-the-badge)
 

---

# 📘 Dart OOP Practice Problems & Solutions (Lab 1)

📄 <a href="Materials/Dart-Practise-Problem-01.pdf" target="_blank">Download Lab Questions PDF</a>

---

## 📑 Table of Contents

<table>
<tr>
<td valign="top">

### 🔹 Basic OOP

- <a href="#1-student-class">1. Student Class</a>
- <a href="#2-bank-account">2. Bank Account</a>
- <a href="#3-rectangle-area">3. Rectangle Area</a>
- <a href="#4-inheritance-vehicle-system">4. Inheritance (Vehicle System)</a>
- <a href="#5-method-overriding-employee-salary">5. Method Overriding</a>
- <a href="#6-abstract-class-shape-system">6. Abstract Class</a>
- <a href="#7-interface-implementation">7. Interface Implementation</a>

</td>

<td valign="top">

### 🔹 Advanced OOP

- <a href="#8-library-management-system-mini-project">8. Library Management System</a>
- <a href="#9-constructor--named-constructor">9. Constructor & Named Constructor</a>
- <a href="#10-encapsulation">10. Encapsulation</a>
- <a href="#11-polymorphism--list">11. Polymorphism + List</a>
- <a href="#12-multiple-inheritance-via-interfaces">12. Multiple Inheritance</a>
- <a href="#13-real-life-scenario-e-commerce">13. E-Commerce System</a>
- <a href="#14-friend-like-behavior-dart-alternative">14. Friend-like Behavior</a>
- <a href="#15-exception-handling-in-oop">15. Exception Handling</a>

</td>
</tr>
</table>

---

---

# 1. Student Class

## Question
Create a class `Student` with:

- Properties: `name`, `id`, `cgpa`
- Method: `displayInfo()`

### Task
- Create 3 student objects and print their details.

---

## Solution

```dart
class Student {
  String name;
  int id;
  double cgpa;

  Student(this.name, this.id, this.cgpa);

  void displayInfo() {
    print("Name: $name");
    print("ID: $id");
    print("CGPA: $cgpa\n");
  }
}

void main() {
  Student s1 = Student("Rony", 101, 3.80);
  Student s2 = Student("Nadim", 102, 3.65);
  Student s3 = Student("Mim", 103, 3.90);

  s1.displayInfo();
  s2.displayInfo();
  s3.displayInfo();
}
```

---

# 2. Bank Account

## Question
Create a class `BankAccount`:

- Properties: `accountNumber`, `balance`
- Methods:
  - `deposit(amount)`
  - `withdraw(amount)`

Add validation (cannot withdraw more than balance).

---

## Solution

```dart
class BankAccount {
  String accountNumber;
  double balance;

  BankAccount(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: $amount");
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print("Insufficient Balance!");
    } else {
      balance -= amount;
      print("Withdrawn: $amount");
    }
  }
}

void main() {
  BankAccount acc = BankAccount("12345", 5000);

  acc.deposit(1000);
  acc.withdraw(2000);
  acc.withdraw(10000);

  print("Current Balance: ${acc.balance}");
}
```

---

# 3. Rectangle Area

## Question
Create a class `Rectangle`:

- Properties: `length`, `width`
- Method: `area()`

Create objects and calculate area.

---

## Solution

```dart
class Rectangle {
  double length;
  double width;

  Rectangle(this.length, this.width);

  double area() {
    return length * width;
  }
}

void main() {
  Rectangle r1 = Rectangle(10, 5);

  print("Area: ${r1.area()}");
}
```

---

# 4. Inheritance (Vehicle System)

## Question

Create:

- Base class `Vehicle` with `brand` and `speed`
- Derived classes:
  - `Car`
  - `Bike`

Add method `showDetails()` in each class.

---

## Solution

```dart
class Vehicle {
  String brand;
  int speed;

  Vehicle(this.brand, this.speed);
}

class Car extends Vehicle {
  Car(String brand, int speed) : super(brand, speed);

  void showDetails() {
    print("Car Brand: $brand");
    print("Speed: $speed");
  }
}

class Bike extends Vehicle {
  Bike(String brand, int speed) : super(brand, speed);

  void showDetails() {
    print("Bike Brand: $brand");
    print("Speed: $speed");
  }
}

void main() {
  Car car = Car("Toyota", 180);
  Bike bike = Bike("Yamaha", 120);

  car.showDetails();
  bike.showDetails();
}
```

---

# 5. Method Overriding (Employee Salary)

## Question

Create:

- Base class `Employee` with method `calculateSalary()`
- Subclasses:
  - `FullTimeEmployee`
  - `PartTimeEmployee`

Override salary calculation differently.

---

## Solution

```dart
class Employee {
  double calculateSalary() {
    return 0;
  }
}

class FullTimeEmployee extends Employee {
  @override
  double calculateSalary() {
    return 50000;
  }
}

class PartTimeEmployee extends Employee {
  @override
  double calculateSalary() {
    return 20000;
  }
}

void main() {
  Employee e1 = FullTimeEmployee();
  Employee e2 = PartTimeEmployee();

  print("Full Time Salary: ${e1.calculateSalary()}");
  print("Part Time Salary: ${e2.calculateSalary()}");
}
```

---

# 6. Abstract Class (Shape System)

## Question

Create:

- Abstract class `Shape` with method `area()`
- Subclasses:
  - `Circle`
  - `Rectangle`

Use polymorphism to call `area()`.

---

## Solution

```dart
import 'dart:math';

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double length, width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

void main() {
  Shape s1 = Circle(5);
  Shape s2 = Rectangle(4, 6);

  print("Circle Area: ${s1.area()}");
  print("Rectangle Area: ${s2.area()}");
}
```

---

# 7. Interface Implementation

## Question

Create:

- Interface `Printable`
- Class `Report implements Printable`

Implement method `printData()`.

---

## Solution

```dart
abstract class Printable {
  void printData();
}

class Report implements Printable {
  @override
  void printData() {
    print("Printing Report...");
  }
}

void main() {
  Report r = Report();
  r.printData();
}
```

---

# 8. Library Management System (Mini Project)

## Question

Classes:

- `Book`
- `User`
- `Library`

Features:

- Borrow book
- Return book
- Show available books

---

## Solution

```dart
class Book {
  String title;
  String author;
  bool available = true;

  Book(this.title, this.author);
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void showAvailableBooks() {
    for (var book in books) {
      if (book.available) {
        print("${book.title} by ${book.author}");
      }
    }
  }

  void borrowBook(String title) {
    for (var book in books) {
      if (book.title == title && book.available) {
        book.available = false;
        print("Borrowed: $title");
        return;
      }
    }

    print("Book not available");
  }

  void returnBook(String title) {
    for (var book in books) {
      if (book.title == title) {
        book.available = true;
        print("Returned: $title");
      }
    }
  }
}

void main() {
  Library lib = Library();

  lib.addBook(Book("Flutter", "Rony"));
  lib.addBook(Book("Dart", "Ahmed"));

  lib.showAvailableBooks();

  lib.borrowBook("Flutter");

  lib.showAvailableBooks();
}
```

---

# 9. Constructor & Named Constructor

## Question

Create a class `Product`:

- Properties: `name`, `price`
- Default constructor
- Named constructor: `Product.discounted()`

Apply discount logic.

---

## Solution

```dart
class Product {
  String name;
  double price;

  Product(this.name, this.price);

  Product.discounted(String name, double price)
      : name = name,
        price = price * 0.8;

  void show() {
    print("$name : $price");
  }
}

void main() {
  Product p1 = Product("Laptop", 50000);
  Product p2 = Product.discounted("Phone", 30000);

  p1.show();
  p2.show();
}
```

---

# 10. Encapsulation

## Question

Create class `Person`:

- Private variable `_age`
- Getter and setter for `age`

Add validation (age must be positive).

---

## Solution

```dart
class Person {
  int _age = 0;

  int get age => _age;

  set age(int value) {
    if (value > 0) {
      _age = value;
    } else {
      print("Invalid Age");
    }
  }
}

void main() {
  Person p = Person();

  p.age = 20;
  print(p.age);

  p.age = -5;
}
```

---

# 11. Polymorphism + List

## Question

Create a list of different `Shape` objects and:

- Store them in a single list
- Loop through and calculate total area

---

## Solution

```dart
import 'dart:math';

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() => pi * radius * radius;
}

class Rectangle extends Shape {
  double length, width;

  Rectangle(this.length, this.width);

  @override
  double area() => length * width;
}

void main() {
  List<Shape> shapes = [
    Circle(5),
    Rectangle(4, 6)
  ];

  double total = 0;

  for (var shape in shapes) {
    total += shape.area();
  }

  print("Total Area: $total");
}
```

---

# 12. Multiple Inheritance via Interfaces

## Question

Create:

- `Flyable`
- `Swimmable`

Class `Duck implements both`.

---

## Solution

```dart
abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print("Duck can fly");
  }

  @override
  void swim() {
    print("Duck can swim");
  }
}

void main() {
  Duck d = Duck();

  d.fly();
  d.swim();
}
```

---

# 13. Real-Life Scenario (E-Commerce)

## Question

Design system:

- `User`
- `Product`
- `Cart`
- `Order`

Features:

- Add to cart
- Calculate total price
- Place order

---

## Solution

```dart
class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class Cart {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  double totalPrice() {
    double total = 0;

    for (var p in products) {
      total += p.price;
    }

    return total;
  }
}

class Order {
  void placeOrder(Cart cart) {
    print("Order Placed!");
    print("Total: ${cart.totalPrice()}");
  }
}

void main() {
  Product p1 = Product("Laptop", 50000);
  Product p2 = Product("Mouse", 1000);

  Cart cart = Cart();

  cart.addProduct(p1);
  cart.addProduct(p2);

  Order order = Order();

  order.placeOrder(cart);
}
```

---

# 14. Friend-like Behavior (Dart Alternative)

## Question

Since Dart doesn't support friend functions like C++, simulate it using:

- Helper class
- Same library access

Design a secure data-sharing example.

---

## Solution

```dart
class SecretData {
  String _password = "12345";
}

class Helper {
  void showPassword(SecretData data) {
    print(data._password);
  }
}

void main() {
  SecretData s = SecretData();
  Helper h = Helper();

  h.showPassword(s);
}
```

---

# 15. Exception Handling in OOP

## Question

Create a class `ATM`:

- Method `withdraw(amount)`

Throw exception if:

- Insufficient balance
- Invalid amount

---

## Solution

```dart
class ATM {
  double balance = 5000;

  void withdraw(double amount) {
    if (amount <= 0) {
      throw Exception("Invalid Amount");
    }

    if (amount > balance) {
      throw Exception("Insufficient Balance");
    }

    balance -= amount;

    print("Withdraw Successful");
    print("Remaining Balance: $balance");
  }
}

void main() {
  ATM atm = ATM();

  try {
    atm.withdraw(1000);
    atm.withdraw(10000);
  } catch (e) {
    print(e);
  }
}
```

---

# 📚 Topics Covered

- Class & Object
- Constructor
- Named Constructor
- Inheritance
- Method Overriding
- Polymorphism
- Abstract Class
- Interface
- Encapsulation
- Exception Handling
- Mini Project Design







---

#  Author

Md. Rony Ahmmed Shah  
B.Sc. (Engg.) in Educational Technology and Engineering at University of Frontier Technology, Bangladesh (UFTB)

```