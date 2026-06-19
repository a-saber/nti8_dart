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