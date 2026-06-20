class Book {
  String? title;
  String? author;
  String? category;

  void display(){
    print("Title: $title");
    print("Author: $author");
    print("Category: $category");
  }

  Book({ required this.title, required this.author, required this.category });
  Book.categoryA(){
    title = "Book A";
    author = "Author A";
    category = "Category A";
  }
}

void main(){
  Book b1 = Book(title: "Book 1", author: "Author 1", category: "Category 1");
  Book b2 = Book.categoryA();
  b1.display();
  b2.display();
}

/*
Product
- name
- price
- brand
- quantity

// constructors
Product({ required this.name, required this.price, required this.brand, required this.quantity });
Product.categoryA(){
  name = "Product A";
  price = 100;
  brand = "Apple";
  quantity = 10;
}
displayInfo()

sell(int soldQty)


 */

/*

BankAccount
- balance
- accountNumber
- accountHolderName

// constructors
BankAccount({ required this.balance, required this.accountNumber, required this.accountHolderName });
BankAccount.vip(){
  balance = 1000;
  accountNumber = "1234567890";
  accountHolderName = "John Doe";
}

deposit(int amount)
withdraw(int amount)

display()

 */