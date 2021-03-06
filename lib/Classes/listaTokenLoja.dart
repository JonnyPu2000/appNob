import 'package:curso_project/Classes/servProf.dart';

class ListaTokenLoja {
  String token;
  String endereco;
  String fone;
  String nomeLoja;
  String nomeCli;
  String mensagem;
  int idLogin;
  int codCli;
  String dataMax;
  int hantes;
  int idLoja;
  String cencrypt;
  List<ServProf> servProf;

  ListaTokenLoja(
      this.token,
      this.endereco,
      this.fone,
      this.nomeLoja,
      this.nomeCli,
      this.mensagem,
      this.idLogin,
      this.codCli,
      this.dataMax,
      this.hantes,
      this.idLoja,
      this.cencrypt,
      [this.servProf]);

  factory ListaTokenLoja.fromJson(dynamic json) {
    if (json['serv_prof'] != null) {
      var servProfObjJson = json['serv_prof'] as List;
      List<ServProf> _servProf = servProfObjJson
          .map((servJson) => ServProf.fromJson(servJson))
          .toList();
      return ListaTokenLoja(
          json['toquem'] as String,
          json['endereco'] as String,
          json['fone'] as String,
          json['nome_loja'] as String,
          json['nome_cli'] as String,
          json['mensagem'] as String,
          json['id_login'] as int,
          json['codcli'] as int,
          json['data_max'] as String,
          json['hantes'] as int,
          json['id_loja'] as int,
          json['cencrypt'] as String,
          _servProf);
    } else {
      return ListaTokenLoja(
          json['toquem'] as String,
          json['endereco'] as String,
          json['fone'] as String,
          json['nome_loja'] as String,
          json['nome_cli'] as String,
          json['mensagem'] as String,
          json['id_login'] as int,
          json['codcli'] as int,
          json['data_max'] as String,
          json['hantes'] as int,
          json['id_loja'] as int,
          json['cencrypt'] as String);
    }
  }

  @override
  String toString() {
    return '{${this.token}, ${this.endereco}, ${this.fone}, ${this.nomeLoja}, ${this.nomeCli}, ${this.mensagem}, ${this.idLogin}, ${this.codCli}, ${this.dataMax}, ${this.hantes}, ${this.idLoja}, ${this.cencrypt}, ${this.servProf}}';
  }
}
