void main(){
Map<String, dynamic> productAsMap = buildMap("Product A", 100, "Apple", -10);
print(productAsMap);
}

Map<String, dynamic> buildMap(
  String name,
  double price,
  String brand,
  int quantity
)
{
  return {
    'name': name,
    'price': price,
    'brand': brand,
    'quantity': quantity,
    "in_stock": quantity > 0
  };
}