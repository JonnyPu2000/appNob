import 'dart:convert';

import 'package:http/http.dart' as http;

//Aqui fica a conexão com a api de horários
//A função recebe o código do cabeleireiro , o token, o cencrypt,a data em YYYY-MM-DD e o json_xml = json

// ignore: todo
//TODO: Deserializar o Json que vem como resposta
//* Aqui já está funcionando a conexão com a API de horários

getSchedules(codCab, token, cencrypt, date) async {
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

/** 
* ! Função que registar um agendamento na base de dados da central
* ! Parametros da função "servicos", "codcab", "toquem", "cencrypt", "data", "hora", "json_xml"
*/
postSchedules(servicos, codCab, token, cencrypt, date, hour) async {
  final http.Response response = await http.post(
    'http://pdvapi.salaomaster.com.br/MobileIncluir_umag',
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode({
      "servicos": servicos,
      "codcab": codCab,
      "toquem": token,
      "cencrypt": cencrypt,
      "data": date,
      "hora": hour,
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

//!Função para consultar tds os agendamentos do cliente!
//?Parametros : token, cencrypt, dt1, dt2, json_xml
//*Recebe tds os agendamentos do cliente

getPersonalSchedules(token, cencrypt, dt1, dt2) async {
  final http.Response response = await http.post(
    'http://pdvapi.salaomaster.com.br/Mobile_get_agendamentos',
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode({
      "toquem": token,
      "cencrypt": cencrypt,
      "dt1": dt1,
      "dt2": dt2,
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

//!Função para excluir um agendamento
//?Params: token, cencrypt, date, codItemSchedule, codSchedule

deleteSchedule(token, cencrypt, date, codItemSchedule, codSchedule) async {
  final http.Response response = await http.post(
    'http://pdvapi.salaomaster.com.br/MobileExcluir_agend_item/',
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode({
      "toquem": token,
      "cencrypt": cencrypt,
      "data": date,
      "coditemagend": codItemSchedule,
      "codagend": codSchedule,
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
