class Person{
  var name;
  var age;

  Person(this.name, this.age);

  void printInfo(){
    print('name: $name , age: $age');
}
}

void main(){
  var person = Person('John Doe', 30);
  person.printInfo();

  var person2 = Person('sam', 12);
  person2.printInfo();
}

