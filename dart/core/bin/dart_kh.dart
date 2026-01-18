
void main(List<String> arguments) {

  //=======Data types==========
int x = 10;
double tax = .15;
bool isStudent = true; // true or false.
String name = "KHalid"; 
List list = [x ,tax , isStudent , name]; // list of dynamic type.
print(list);
list.add("KHalid");
print(list);

Set set = {1,1,3,5,6,4}; //No duplicate values allowed.
print(set);

Map user = {
  "Name" : "Majed" , "age" : 12 , "Salary" : 1233
};
print(user);

var v = 15; //Takes the type of first assignment.

dynamic d = "KHalid"; d = 13; //Can take any type. 


//=======Constants==========

final int n1 =d ; //Constant but can be assigned at runtime.
const double pi = 3.14; //Compile time constant.



//=======loops==========


for(int i=0 ; i<5 ; i++){
  print(i); 
}
  while(x>0){
    print(x);
    x--;
  }

  do {
    print(tax);
    tax -= 0.01;
  } while (tax>0);  

  for(var item in list){
    print(item);
  }

  //=======conditionals==========
  if(isStudent){
    print("You are student");
  } else {
    print("You are not student");
  }  

    int grade = d>10 ? 100 : 50; //Ternary operator
    print(grade);

  //=======Nullable=========

 // int a;//null by default
 // int? b; //Nullable variable
 // print(b);
 // print(a);

}
