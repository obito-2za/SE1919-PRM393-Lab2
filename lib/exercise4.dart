/*
  Exercise 4 – Intro to OOP
  Goal: Practice classes, objects, constructors, inheritance,
        and method overriding.
*/

void main() {
  // Create Car object using normal constructor
  Car car1 = Car("Toyota");
  car1.drive();

  // Create Car object using named constructor
  Car car2 = Car.sportsCar("Ferrari");
  car2.drive();

  // Create ElectricCar object (subclass)
  ElectricCar eCar = ElectricCar("Tesla", 500);
  eCar.drive();
}

// CLASS: Car (Base class)
class Car {
  String brand;

  // Normal constructor
  Car(this.brand);

  // Named constructor
  Car.sportsCar(this.brand) {
    print("Sports Car created: $brand");
  }

  // Method
  void drive() {
    print("$brand is driving with gasoline engine.");
  }
}

// CLASS: ElectricCar (Subclass)
class ElectricCar extends Car {
  int batteryCapacity;

  // Constructor calling parent constructor
  ElectricCar(String brand, this.batteryCapacity) : super(brand);

  // Override method from Car
  @override
  void drive() {
    print("$brand is driving silently with electric motor.");
    print("Battery capacity: $batteryCapacity kWh");
  }
}