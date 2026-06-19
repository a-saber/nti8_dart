int calculateTotal(int Function(int price) applyDiscount){
  return applyDiscount(100);
}

/*
calculateTotal(applyDiscount)


void main(){
  calculateTotal(withPromoCode);
  calculateTotal(withCoupon);
  calculateTotal(withVoucher);

}

withPromoCode(int price){
  return price - 10;
}

withCoupon(int price){
  return price - 5;
}

withVoucher(int price){
  return price - 15;
}

 */




int sum(int s1, int s2){
  return s1 + s2;
}
void main(){
  print(calculate(sum, x1:20, x2:30));
}

int calculate(int Function(int x1, int x2) operation, {required int x1, required int x2}){
  return operation(x1, x2);
}