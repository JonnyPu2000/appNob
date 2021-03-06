class ServProf {
  String fam;
  String item;
  int codServ;
  double preco;
  String abrev;
  int codCab;

  ServProf(
      this.fam, this.item, this.codServ, this.preco, this.abrev, this.codCab);

  factory ServProf.fromJson(dynamic json) {
    return ServProf(json['fam'], json['item'], json['codserv'], json['preco'],
        json['abrev'], json['codcab']);
  }

  @override
  String toString() {
    return '{ ${this.fam}, ${this.item}, ${this.codServ}, ${this.preco}, ${this.abrev}, ${this.codCab}}';
  }
}
