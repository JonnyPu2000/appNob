//Classe para os detalhes do serviço!

class ServProf {
  String fam;
  String item;
  int codserv;
  double preco;
  String abrev;
  int codcab;

  ServProf(
      this.fam, this.item, this.codserv, this.preco, this.abrev, this.codcab);

  factory ServProf.fromJson(dynamic json) {
    return ServProf(
        json['fam'] as String,
        json['item'] as String,
        json['codserv'] as int,
        json['preco'] as double,
        json['abrev'] as String,
        json['codcab'] as int);
  }

  @override
  String toString() {
    return '{ ${this.fam}, ${this.item}, ${this.codserv}, ${this.preco}, ${this.abrev}, ${this.codcab}}';
  }
}
