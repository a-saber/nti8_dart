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

  Manager e = Manager('ahmed', 20, job: 'flutter developer', department: 'S');
  e.displayInfo();
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