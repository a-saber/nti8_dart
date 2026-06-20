class Person{
  String? name;
  int? age;

  Person(this.name, this.age);

  void displayInfo(){
    print('Name: $name');
    print('Age: $age');
  }
}

class Employee extends Person {

  String? job;
  Employee(super.name, super.age, {required this.job, });

  @override
  void displayInfo(){
    super.displayInfo();
    print('job: $job');

  }
}

class Manager extends Employee{
  String? department;
  Manager(super.name, super.age, {super.job, this.department});

  @override
  void displayInfo(){
    print('department: $department');
    super.displayInfo();
  }
}


void main(){

  // Manager e = Manager('ahmed', 20, job: 'flutter developer', department: 'S');
  // e.displayInfo();

  Vehicle v = Vehicle('brand 1', 'model 1');
  displayVehicleInfo(v);

  Car c = Car(color: 'Color 2', doorNumbers: 4, model: 'model 2', brand: 'brand 2');
  displayVehicleInfo(c);

  ElectricCar ec = ElectricCar(color: 'Color 3', doorNumbers: 5, model: 'model 3', brand: 'brand 3', batteryCapacity: 100);
  displayVehicleInfo(ec);

  displayVehicleInfo(ElectricCar(color: 'Color 3', doorNumbers: 5, model: 'model 3', brand: 'brand 3', batteryCapacity: 100));

}

void displayVehicleInfo(Vehicle v){
  v.displayInfo();
}

/*

Vehicle
- brand
- model
- displayInfo()
Vehicle() : Positional Parameters

Car
- color
- doorsNumber
- displayInfo()
- startEngine() => "Engine started"
Car() : Named Parameters

ElectricCar
- batteryCapacity
- displayInfo()
- startEngine() => "Engine started Silently"
ElectricCar() : Named Parameters
 */






class Vehicle{

  String? brand;
  String? model;

  Vehicle(this.brand, this.model);
  void displayInfo(){
    print('brand: $brand');
    print('model: $model');
  }
}

class Car extends Vehicle{
  String? color;
  int? doorNumbers;
  Car({
    required this.color,
    required this.doorNumbers,
    required String? model,
    required String? brand
}): super(brand, model);

  Car.brandA(
  super.brand,
  super.model,
  {
    required this.color,
    required this.doorNumbers

  });

  @override
  void displayInfo(){
    super.displayInfo();
    print('color: $color');
    print('doorNumbers: $doorNumbers');
  }

  void startEngine()=> print('startEngine');
}

class ElectricCar extends Car{
  int? batteryCapacity;
  ElectricCar({
    required this.batteryCapacity,
    required super.color,
    required super.doorNumbers,
    required super.brand,
    required super.model
});
  ElectricCar.brandA(
      String? model,
      String? brand,
      String? color,
      int? doorNumbers
      ):
      super.brandA(brand, model, color: color, doorNumbers: doorNumbers);

  @override
  void displayInfo(){
    super.displayInfo();
    print('batteryCapacity: $batteryCapacity');
  }
  @override
  void startEngine()=> print('Engine started Silently');
}

