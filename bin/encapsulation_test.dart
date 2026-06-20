import 'encapsulation.dart';
void main(){
  Product p1 = Product(name: 'Product A');
  print(p1.name);
  print(p1.setPrice(-100));

  p1.price = 100;
  // p1.displayInfo();
  print(p1.getPrice());
  print(p1.price);
  // p1._price = -100;
  // print(p1._price);
}

/*
Employee
- name
- _age
- _salary
 */