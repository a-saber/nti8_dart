


1) Class: Product

Properties:
name
price
quantity

void displayInfo()
bool buy(int amount):
لو الكمية متاحة تقلل quantity
ترجع true
لو غير متاحة ترجع false


2) Class: Customer

Properties:
name
balance

Customer.guest():
name = "Guest"
balance = 0


bool pay(double amount)

void displayInfo()




3) Class: ShoppingSystem

Properties:
customer
product


void purchase(int quantity)
تحسب السعر:
total = product.price * quantity
تتأكد أن العميل معه فلوس.
تتأكد أن المنتج متوفر.
لو تمام:
تخصم من العميل
تقلل كمية المنتج
تطبع:
Ahmed bought 2 Laptop
Total price: 50000
Remaining balance: 10000
