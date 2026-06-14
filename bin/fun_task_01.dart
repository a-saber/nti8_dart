void main(){
Map<String, dynamic> productAsMap = buildMap(
  price: 100,
  brand: "Apple",
  quantity: 10,
  name: "Product A",
);
print(productAsMap);
}

Map<String, dynamic> buildMap(
 {
  required String name,
  required double price,
  required String brand,
  required int quantity
  }
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