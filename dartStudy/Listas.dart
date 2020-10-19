import 'dart:io';
import 'dart:collections';


void main()
{

  print("Digite o numero: ");
  int number = int.parse(stdin.readLineSync());

  print(number > 10 ? "Numero maior que 10" : "Menor que dez");

  List<int> numbers = [10,11,12,13,14]; // normal list
  numbers.add(12);
  numbers.add(7);
  print(numbers[3]);

  bool reesult = numbers.every(result) => result > 0);
  print(reesult);






}
