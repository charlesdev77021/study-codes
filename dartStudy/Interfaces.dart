
void main()
{
  var tv = Smartv();
  tv.volDown();
  tv.volUp();
}

class Television
{
  void volUp()
  {

  }

  void volDown()
  {

  }

}

class Smartv implements Television
{
  void volUp()
  {
    print("ALto");
  }

  void volDown()
  {
    print("Baixo");
  }
}
