class Person
{
  String name;
  int age;
  double height;

  void birthDay()
  {
    age++;
  }

  void sleep()
  {
    print('$name dormiu');
  }

  int compare(int age)
  {
    return this.age - age;
  }

}

void main()
{
  Person pessoa = Person();
  pessoa.age = 18;
  pessoa.name = "charles";
  pessoa.height = 1.91;
  pessoa.sleep();
  print(pessoa.age);
  print(pessoa.compare(12));

  Person pessoa1 = Person();
  pessoa1.age = 21;
  pessoa1.name = "bob";
  pessoa1.height = 2;
  pessoa1.sleep();
}
