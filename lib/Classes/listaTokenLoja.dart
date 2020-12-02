//Classe para defenir o que é recebido da api de Login!

import 'package:curso_project/Classes/servProf.dart';

class ListaTokenLoja {
  List<ServProf> servProf;

  ListaTokenLoja([this.servProf]);

  // ignore: missing_return
  factory ListaTokenLoja.fromJson(dynamic json) {
    if (json['serv_prof'] != null) {
      var servProfObjJson = json['serv_prof'] as List;
      List<ServProf> _servProf = servProfObjJson
          .map((servProfJson) => ServProf.fromJson(servProfJson))
          .toList();

      return ListaTokenLoja(_servProf);
    }
  }

  @override
  String toString() {
    return '{${this.servProf}}';
  }
}
