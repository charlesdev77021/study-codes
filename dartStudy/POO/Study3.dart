class Animal
{
  String _name;

//  setName(String name)
//  {
//    this._name = name;
//  }

//   getName()
//  {
//    return this._name;
//  }

  String get name => _name;

  void set name(String value) => _name = value;

  void say() => print("JAAJ");

  Animal(this._name);

}

void main()
{
  Animal ani = new Animal("cachorro");
  print(ani.name);
  ani.say();
}
