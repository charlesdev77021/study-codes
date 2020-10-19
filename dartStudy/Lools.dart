import 'dart:io';
import 'dart:collection';


void main()
{

  print("Digite sua idade");
  int idade = int.parse(stdin.readLineSync());

  if(idade == 18)
    print("Maior de idade");
  else
    print("Menor de idade");

    do {
      print("aa");
      idade++;
    }while(idade < 1000);

    while(idade < 2000) {
      print("bb");
      idade++;
    }

    List<String> nomes = ["Charles", "BOB", "LADY"];

    nomes.forEach((person){
        print(person);
    });

    for(dynamic lista in nomes){
      print(lista);
    }


}
