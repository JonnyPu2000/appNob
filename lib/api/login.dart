import 'dart:convert';
import 'package:curso_project/api/schedules.dart';
import 'package:http/http.dart' as http;

//*Import da classe de login
import 'package:curso_project/Classes/loginInfo.dart';

import 'package:curso_project/Classes/listaTokenLoja.dart';
//Arquivo que gera a conexão com a api de login

postRequest(login, psd) async {
  final http.Response response = await http.post(
    'http://pdvapi.salaomaster.com.br/logarcli',
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode({"login": login, "pw": psd, "json_xml": "json"}),
  );
  if (response.statusCode == 200) {
    var json = response.body;
    LoginInfo loginInfo = LoginInfo.fromJson(jsonDecode(json));
    return loginInfo;
  } else {
    print(response.statusCode);
    throw Exception('Erro: ${response.statusCode}');
  }
}
