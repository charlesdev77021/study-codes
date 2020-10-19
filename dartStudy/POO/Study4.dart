class Person
{
  int cpf;
  String name;


  void cameIn()
  {
    print("entrada: ");
  }

  void cameOut()
  {
    print("Saida:");
  }

}

class Client extends Person
{
  String addres;
}

class Explyer extends Person
{
  String mother;
}


void main()
{

  var teste = Client();
  teste.name = "Teste de heranca";
  teste.cpf = 123;

  print(teste.name);
  print(teste.cpf);


}
