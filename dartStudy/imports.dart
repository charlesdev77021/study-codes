import 'dart:io';
import 'dart:collection';
import 'dart:convert';
import 'package:http/http.dart' as http;
void main()
{
  String nvalua = "hello";
  List bytes = utf8.encode(nvalua);
  String encoded = base64.encode(bytes);

  print("${encoded}");

  List dbytes = base64.decode(encoded);
  String decoded = utf8.decode(dbytes);

  print(decoded);

  var url = "https://google.com.br";
  http.get(url).then((response){
    print("codigo de status: ${response.statusCode}");
    print("Response body: ${response.body}");
  });



}
