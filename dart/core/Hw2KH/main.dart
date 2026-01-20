import "exercise.dart";

void main() {
  Author author1 = Author("KHalid", "KHalid@k.com");
  Author author2 = Author("Muhannd", "Muhannd@k.com");
  Author author3 = Author("Naif", "Naif@k.com");

  Book book1 = Book(
    name: "How to become good at Programming",
    ISBN: 'K29643',
    editionNumber: 1,
    author: author1,
  );
  Book book2 = Book(
    name: "How to become bad at Programming",
    ISBN: 'M29643',
    editionNumber: 1,
    author: author2,
  );
  Book book3 = Book(
    name: "How to meh at Programming",
    ISBN: 'N29643',
    editionNumber: 1,
    author: author3,
  );

  Customer customer1 = Customer("Customer1", "Customer@library");
  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);

  customer1.printInformation();
}

//KHalid ALluhaidan.
