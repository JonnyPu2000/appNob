//Função que vai separar os dados vindos da api

import 'dart:convert';

separeteInfo(json) {
  var finalJson = jsonDecode(json);
  print(finalJson);
}
