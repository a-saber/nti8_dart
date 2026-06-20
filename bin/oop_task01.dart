class Product {
  late String name;
  late double price;
  late int quantity;

  Product({required this.name, required this.price, required this.quantity});

  void displayInfo() {
    print('Name: $name');
    print('Price: $price');
    print('Quantity: $quantity');
  }

  bool buy(int amount){
    if(amount <= quantity){
      quantity -= amount;
      return true;
    }
    return false;
  }
}


class Customer
{
  late String name;
  late double balance;

  Customer({required this.name, required this.balance});
  Customer.guest(){
    name = 'Guest';
    balance = 0;
  }

  bool pay(double amount){
    if(amount <= balance){
      balance -= amount;
      return true;
    }
    return false;
  }

  void displayInfo(){
    print('Name: $name');
    print('Balance: $balance');
  }
}

class ShoppingSystem{
  late Product product;
  late Customer customer;

  ShoppingSystem({required this.product, required this.customer});

  bool purchase(int amount){
    if(product.quantity < amount){
      print('Insufficient quantity');
      return false;
    }
    double total = product.price * amount;
    if(customer.balance < total){
      print('Insufficient balance');
      return false;
    }
    product.buy(amount);
    customer.pay(total);
    print('Purchase successful');
    return true;
  }
  bool purchase2(int amount){
    if(!product.buy(amount)){
      print('Insufficient quantity');
      return false;
    }

    double total = product.price * amount;
    if(!customer.pay(total)){
      print('Insufficient balance');
      product.quantity += amount;
      return false;
    }
    print('Purchase successful');
    return true;
  }
}