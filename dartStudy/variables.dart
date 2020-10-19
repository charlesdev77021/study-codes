import 'dart:io';

void main()
{

  String nome = "Charles";
  int inte = 7;
  var name = "char";
  double doub = 1.2;
  num  no = 1.1;
  const pi = 3.14;

  print("Seu nome eh: ${nome}");

  print("Seu sobrenome eh: ");
  String sobre = stdin.readLineSync();
  print("\n${sobre}");

  print(sobre.toUpperCase());
  print(sobre.toLowerCase());
  print(sobre.trim());
  print(sobre.split(" "));
  print(sobre.indexOf("a"));

}
