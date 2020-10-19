import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

main() {
  menu();
}

void menu()
{
  print("################ Begin ################");
  print("Selecione uma opcao: ");
  print("\n 1) cotacao: ");
  print("\n 2) Registrar: ");
  print("\n 3) cotacoes registradas: ");

  String option = stdin.readLineSync();

  switch(int.parse(option))
  {
    case 1: today(); break;
    case 2: registerData(); break;
    case 3: listData(); break;

    default: print("Choice unavaible"); menu(); break;
  }
}



today() async
{
  var data = await getData();
  print('\n\n ################################ HG Brasil cotacao ################################');
  print("${data['date']} -> ${data['data']}");
}

Future getData() async
{
  String url = 'https://api.hgbrasil.com/finance?key=404b50b5';
  http.Response response = await http.get(url);

  if (response.statusCode == 200) {
    var data = json.decode(response.body)['results']['currencies'];
    var usd = data['USD'];
    var eur = data['EUR'];
    var gpp = data['GPB'];

    Map formatMap = Map();
    formatMap['data'] = '25/01/2019';
    formatMap['data'] = '${usd['name']}: ${usd['buy']} | ${eur['name']}: ${eur['buy']}: | ${gpp['name']}: ${gpp['buy']}';

    return formatMap;

  }else
    throw("failed: ");
}

String now()
{
  var now = DateTime.now();
  return '${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(2, '0')}';
}


registerData() async
{
  var hgData = await getData();
  dynamic fileData = readFile();

  fileData = (fileData != null && fileData.lenght > 0 ? json.decode(fileData): List());

  bool exists = false;

  fileData.forEach((data){
    if(data['date'] == now())
      exists == true;
  });
  if(!exists) {
    fileData.add({'date':now(),"data": "${hgData['data']}"});

    Directory dir = Directory.current;
    File file = new File(dir.path + 'meuFIle.txt');
    RandomAccessFile raf = file.openSync(mode: FileMode.write);

    raf.writeStringSync(json.encode(fileData).toString());
    raf.flushSync();
    raf.closeSync();

    print("Data saved!");

  }else {
    print("Error. ");
  }


}

String readFile()
{
  Directory dir = Directory.current;
  File file = new File(dir.path + 'meuFIle.txt');

  if(!file.existsSync()){
    return null;
  }

  return file.readAsStringSync();

}

listData()
{
  dynamic fileData = readFile();
  fileData = (fileData != null && fileData.lenght > 0 ? json.decode(fileData): List());

    print("LIST: ");

    fileData.forEach((data){
      print('${data['date']} -> ${data['data']}');
    });

}