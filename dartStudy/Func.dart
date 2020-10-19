import 'dart:io';
import 'dart:collection';


void main()
{
  teste();

  String name = "Charles";
  sayHello();

  int cms = 1000;
  print(centForMeters(cms));
  personData(height: 1.91, name: "Charles");

  funcaoClosure(){
    var oi = (var nome){
      var dizAlgo = (var algo) => print("oi ${nome}, ${algo}!");
      dizAlgo("Ola rsss");
    };
  }

  oi("Charles");


}


void teste()
{
  print("teste");
}
double centForMeters(int mt)
{
  return mt / 100;
}

void sayHello([String str = ' ']) //opcionais
{
  print("Ola: ${str}");
}

void personData({String name, double height}) //parametros nomeados
{
  print("${name} e sua altura: ${height}");
}
