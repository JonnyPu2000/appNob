import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Salao extends StatefulWidget {
  String nomeSalao;
  String image;

  Salao({this.image, this.nomeSalao});

  @override
  _SalaoState createState() => _SalaoState(image: image, nomeSalao: nomeSalao);
}

class _SalaoState extends State<Salao> {
  String nomeSalao;
  String image;

  _SalaoState({this.nomeSalao, this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 265,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
            ),
          ),
          Container(
            height: 265,
            color: Colors.black.withOpacity(0.56),
            child: Container(
              alignment: Alignment(-0.9, -0.65),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      child: IconButton(
                          icon: Icon(Icons.arrow_back_ios_rounded,
                              color: Colors.white),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Agendar Visita",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.only(top: 200),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(10, 20, 30, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
              ),
              Container(
                height: 600,
                margin: EdgeInsets.only(top: 225, left: 33),
                child: Text("Escolha uma data",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 270, left: 30, right: 30, bottom: 520),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(50, 51, 70, 1),
                    borderRadius: BorderRadius.circular(30)),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: 270, left: 325, right: 45, bottom: 520),
                  child: IconButton(
                      icon: Icon(
                        Icons.date_range_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                      onPressed: null)),
              SizedBox(
                height: 37,
              ),
              criarProfissional(profimage: "assets/barbeiro.jpg")
            ],
          ),
        ],
      ),
    );
  }
}

Widget criarProfissional({profimage, nomeprof}) {
  return Container(
    height: 150,
    margin: EdgeInsets.only(top: 350),
    padding: EdgeInsets.all(20),
    child: Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        margin: EdgeInsets.only(right: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.yellow),
                            image: DecorationImage(
                                image: AssetImage(profimage),
                                fit: BoxFit.fill)),
                      ),
                    )),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
