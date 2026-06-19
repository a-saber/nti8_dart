void main(){
  // int result = calculate( y: 20, x: 10);
  // print(result);

  sum(z: 20, 10, y: 20, k: 30);
  Text('hello', color: 'red', fontSize: 20.0);

}

int sum(int x1, {required int y, int? z, int k = 5}){


  return 10;
}

Text(String text, {
  String? color, double? fontSize
}){

}


// Build
// header
// ReturnType funName (Params)
// Body
//{}

int calculate({ required int x, required int y})
{
  int sum = x + y;
  return sum;
}

/*
build function 
Map<String, dynamic> productAsMap = buildMap("Product A", 100, "Apple", 10);
print(productAsMap);
{
  'name': 'Product A',
  'price': 100,
  'brand': 'Apple',
  'quantity': 10,
  "in_stock": true
}

Map<String, dynamic> productAsMap = buildMap("Product A", 100, "Apple", 0);
print(productAsMap);
{
  'name': 'Product A',
  'price': 100,
  'brand': 'Apple',
  'quantity': 0,
  "in_stock": false
}
*/