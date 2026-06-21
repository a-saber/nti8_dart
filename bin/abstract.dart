abstract class Vehicle{

  displayInfo(){
    print('Vehicle');
  }
  void startEngine();
}

class Cycle implements Vehicle{

  @override
  void startEngine() {

  }

  @override
  void displayInfo() {

  }
}

class Car extends Vehicle{
  @override
  void startEngine() {
    print('Engine started');
  }

  @override
  void displayInfo() {
    print('Car');
    super.displayInfo();
  }
}

abstract class Bus extends Vehicle{

  void busStart();

  void busInfo(){}

}

class BusA extends Bus{
  @override
  void busStart() {
    print('Bus started');
  }

  @override
  void startEngine() {
    print('Engine started');
  }
}

/*

Employee
- name
- salary
displayInfo() HAS BODY
calculateBonus() NO BODY

Manager extends Employee
- department
displayInfo() HAS BODY
calculateBonus() HAS BODY
[+fb
Engineer extends Employee
- specialization
displayInfo() HAS BODY
calculateBonus() NO BODY

Developer extends Engineer
- programmingLanguage
displayInfo() HAS BODY
calculateBonus() HAS BODY



 */