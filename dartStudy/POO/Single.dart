void main()
{
  Person.instance.name = "Charles";
  print(Person.instance.name);

  var person1 = Person.instance;
  var person2 = Person.instance;

  person1.name = "Darth vader";
  person2.name = "Lucky";

  print(Person.instance.name);

}

class Person
{

  static final Person instance = new Person.constructorNamed();
  String name;

  Person.constructorNamed();


}
