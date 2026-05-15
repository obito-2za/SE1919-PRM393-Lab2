//Exercise 2 – Collections & Operators
//Goal: Work with List, Set, Map and operators (+, -, ==, &&, ? :).
void main() {

  List<int> numbers = [2, 4, 6, 8, 10];

  print("List of integers: $numbers");

  // OPERATORS
  int a = 15;
  int b = 5;

  print("\na = $a, b = $b");

  // Arithmetic operators
  print("a + b = ${a + b}");
  print("a - b = ${a - b}");

  // Comparison operator
  print("a == b ? ${a == b}");

  // Logical operator &&
  bool check = (a > b) && (b > 0);
  print("(a > b) && (b > 0) = $check");

  // Ternary operator
  String result = (a > b) ? "a is greater" : "a is smaller or equal";
  print("Ternary result: $result");

  // SET (unique values only)
  Set<int> uniqueNumbers = {1, 2, 2, 3, 4, 4, 5};
  print("\nSet values (unique): $uniqueNumbers");

  uniqueNumbers.add(6);
  print("After adding 6: $uniqueNumbers");

  uniqueNumbers.remove(3);
  print("After removing 3: $uniqueNumbers");

  // MAP (key-value pairs)
  Map<String, dynamic> student = {
    "name": "Bùi Đức Duy",
    "age": 23,
    "gpa": 3.0
  };

  print("\nStudent Map: $student");

  // Access value by key
  print("Student name: ${student["name"]}");
  print("Student GPA: ${student["gpa"]}");

  // Update value
  student["age"] = 21;
  print("After updating age: $student");
}