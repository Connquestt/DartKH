class Person {
  String name;
  String email;

  Person(this.name, this.email);
}

class Author extends Person {
  static int idCount = 1;
  int id = idCount;

  Author(super.name, super.email) {
    id = idCount;
    idCount++;
  }
}

class Book {
  String name;
  String ISBN;
  int editionNumber;
  Author author;
  Book({
    required this.name,
    required this.ISBN,
    required this.editionNumber,
    required this.author,
  });

  @override
  String toString() {
    return ('Book name: $name \n Book Author and id: ${author.name} ${author.id}\n');
  }
}

class Customer extends Person {
  List<Book> bookList = [];

  Customer(super.name, super.email);

  void addBook(Book book) => bookList.add(book);

  void printInformation() {
    print("Customer Name : $name \n Customer email: $email \n");
    print(bookList);
  }
}
//KHalid ALluhaidan.