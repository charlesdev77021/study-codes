
class Client
{

  int cpf;
  String name;
  bool active = false;

  //Client(String name, int cpf) { older
  //  this.name = name;
  //  this.cpf = cpf;
  //}

  Client(this.cpf, this.name){

  }

  void disable()
  {
    this.active = false;
    print("cliente desativado");
  }

  void enable()
  {
    this.active = true;
    print("cliente ativado");
  }

}


void main()
{
  Client client = new Client(123, 'charles');
  Client client2 = new Client(321, 'bob');

  print('${client.name}');
  client.disable();
  client.enable();

  print('${client2.name}');
  client2.disable();
  client2.enable();
}
