import 'dart:convert';
import 'package:curso_project/utils/checkLogin.dart';
import 'package:http/http.dart' as http;

//Arquivo que gera a conexão com a api de login

postRequest(login, psd) async {
  final http.Response response = await http.post(
    'http://pdvapi.salaomaster.com.br/logarcli',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(
        <String, String>{"login": login, "pw": psd, "json_xml": "json"}),
  );
  if (response.statusCode == 200) {
    var json = response.body.toString();
    var responseSliced = checkLogin(json);
    print(responseSliced);

    return responseSliced;
  } else {
    print(response.statusCode);
    throw Exception('Erro(colocar uma mensagem aqui)');
  }
}
