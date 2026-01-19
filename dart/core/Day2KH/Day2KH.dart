abstract class Person {
  final String name;
  final int? age;

  Person({required this.name, this.age});

  void printData() {
    print("Name is : $name\nAge is : $age");
  }

  void returnId();
}

class Student extends Person {
  final double gpa;
  Student({required super.name, required super.age, required this.gpa});

  @override
  void printData() {
    super.printData();
    print("GPA is : $gpa");
  }

  @override
  void returnId() {}
}

void main() {
  //Constructor
  //  Person p1 = Person(  age : 21,  name : "KHalid");

  //Model
  Map user = {"name": "Saleh", "age": 22};

  // Person p2 = Person(age: user['age'] , name: user['name']);

  //  print(p2.age);

  //inheritance
  Student s1 = Student(name: "Ahmed", age: 24, gpa: 3.5);
  s1.printData();
}

//Constructor
//Model
//inheritance
//Encapsulation
//ِApstraction
