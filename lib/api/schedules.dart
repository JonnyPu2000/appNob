import 'dart:convert';

import 'package:http/http.dart' as http;

//Aqui fica a conexão com a api de horários
//A função recebe o código do cabeleireiro , o token, o cencrypt,a data em YYYY-MM-DD e o json_xml = json

// ignore: todo
//TODO: Deserializar o Json que vem como resposta
//* Aqui já está funcionando a conexão com a API de horários

postSchedules(codCab, token, cencrypt, date) async {
  final http.Response response = await http.post(
    'http://pdvapi.salaomaster.com.br/MobileGetHorarios_umprof',
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode({
      "codcab": codCab,
      "toquem": token,
      "cencrypt": cencrypt,
      "data": date,
      "json_xml": "json"
    }),
  );
  if (response.statusCode == 200) {
    var json = response.body;
    return json;
  } else {
    print(response.statusCode);
    throw Exception('Erro: ${response.statusCode}');
  }
}
