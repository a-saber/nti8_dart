class Product{
  String? name;
  int? _price;

  Product({required this.name});

  void displayInfo() => print('Name: $name, Price: $_price');


  int? getPrice() => _price;

  // using get keyword
  int get price => _price??0;




  bool setPrice(int price){
    if(price>0){
      _price = price;
      return true;
    }
    return false;
  }

  // using set keyword
  set price(int newPrice){
      if(newPrice>0){
        _price = newPrice;
      }
  }




}
