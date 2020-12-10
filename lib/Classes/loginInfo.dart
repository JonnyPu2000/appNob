//Classe com as infos do login

import 'dart:convert';

import 'package:curso_project/Classes/listaTokenLoja.dart';

class LoginInfo {
  String resp;
  int idLogin;
  List<ListaTokenLoja> listaTokenLoja;

  LoginInfo(this.resp, this.idLogin, [this.listaTokenLoja]);

  factory LoginInfo.fromJson(dynamic json) {
    json = jsonDecode(json);
    if (json['lista_toquem_loja'] != null) {
      var listaTokenObjJson = json['lista_toquem_loja'] as List;
      List<ListaTokenLoja> _listaToken = listaTokenObjJson
          .map((listaJson) => ListaTokenLoja.fromJson(listaJson))
          .toList();
      return LoginInfo(
          json['resp'] as String, json['id_login'] as int, _listaToken);
    } else {
      return LoginInfo(json['resp'] as String, json['id_login'] as int);
    }
  }

  @override
  String toString() {
    return '{${this.resp}, ${this.idLogin}, ${this.listaTokenLoja}}';
  }
}
