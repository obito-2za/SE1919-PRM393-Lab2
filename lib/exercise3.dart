//Exercise 3 – Control Flow & Functions
//Goal: Apply if/else, switch, loops, and functions.
void main() {

  //Write an if/else block to check score.
  int score = 49;

  if (score >= 50) {
    print("Score = $score => PASS");
  } else {
    print("Score = $score => FAIL");
  }

  //Write a switch case for day of week.
  int day = 8;
  String dayName;

  switch (day) {
    case 1:
      dayName = "Monday";
      break;
    case 2:
      dayName = "Tuesday";
      break;
    case 3:
      dayName = "Wednesday";
      break;
    case 4:
      dayName = "Thursday";
      break;
    case 5:
      dayName = "Friday";
      break;
    case 6:
      dayName = "Saturday";
      break;
    case 7:
      dayName = "Sunday";
      break;
    default:
      dayName = "Invalid day";
  }
  print("Day $day => $dayName");

  // Loop through a collection using for, for-in, and forEach().
  List<String> fruits = ["Apple", "Banana", "Mango"];

  // for loop
  print("\nLoop using for:");
  for (int i = 0; i < fruits.length; i++) {
    print("Fruit at index $i: ${fruits[i]}");
  }

  // for-in loop
  print("\nLoop using for-in:");
  for (String fruit in fruits) {
    print("Fruit: $fruit");
  }

  // forEach loop
  print("\nLoop using forEach:");
  fruits.forEach((fruit) {
    print("Fruit: $fruit");
  });

  // Create a function using normal and arrow syntax.
  int sum = addNumbers(10, 20);
  print("\nSum = $sum");

  int product = multiplyNumbers(5, 4);
  print("Product = $product");
}

// Normal function
int addNumbers(int x, int y) {
  return x + y;
}

// Arrow function
int multiplyNumbers(int x, int y) => x * y;