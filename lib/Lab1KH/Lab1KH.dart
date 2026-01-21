void main() {

  printFullName("KHalid", "ALluhaydan");

  print(twoNumbersProduct(4, 5));

  printName(age: 25, name: "KHalid");

  coffeeOrder(size: "large");

  print(calculateTotal(price: 100.0, tax: 0.2));

  print(sumNumbers(n1: 10, n2: 20));
}

//Q1
void printFullName(String firstName, String lastName) =>   print('$firstName $lastName');


//Q2
int twoNumbersProduct(int a, int b) =>    a * b;


//Q3
void printName({int? age , String? name}) =>   print("Age is : $age , Name is :$name");


//Q4
void coffeeOrder ({String size = "medium"}) => print("Coffee size is : $size");


//Q5
double calculateTotal({required double price , double tax =0.15}) => (price + (price *tax));

///Q6
int sumNumbers({int? n1 , int? n2}) =>n1! + n2!;

