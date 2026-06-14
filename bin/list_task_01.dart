void main(){
  List<String> products = [
    'Product A',
    'Product B',
    'Product C'
  ];

  products.add('Product D');

  products[1] = 'Product E';

  // products.remove('Product C');
  products.removeAt(2);

  for(int i=0; i<products.length; i++){
    print("${i+1}. ${products[i]}");
  }
}