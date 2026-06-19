int calculateTotal(int Function(int price) applyDiscount) {
  return applyDiscount(100);
}

/*
calculateTotal(applyDiscount)


void main(){
  calculateTotal(withPromoCode);
  calculateTotal(
    (int price){
      return price - 10;
    }
  );
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

int sum(int s1, int s2) {
  return s1 + s2;
}

void test(int x) {}

void main() {
  int z = 0;
  test(z);
  test(0);

  print(calculate(sum, x1: 20, x2: 30));
  print(calculate(
    (int s1, int s2) => s1 - s2,  // arrow function
    x1: 20, x2: 30));
}

int calculate(int Function(int x1, int x2) operation,
    {required int x1, required int x2}) {
  return operation(x1, x2);
}
