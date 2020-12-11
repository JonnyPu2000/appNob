//*Aqui fica a função que checa o Login do usuário, recebe o login e a senha
//! Importante, 1 para login correto e 0 para login incorreto

import 'package:curso_project/api/login.dart';

checkLogin(login, psd) async {
  var resp = await postRequest(login, psd);
  if (resp.resp == "ok") {
    return resp;
  } else {
    return 0;
  }
}
