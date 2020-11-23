import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Image.asset(
                    image,
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(14),
                child: Stack(
                  children: [
                    Text(
                      "Selecione uma data",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      margin: EdgeInsets.only(right: 20, left: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                offset: Offset(1, 10))
                          ]),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("25 de novembro,2020"),
                          ),
                          IconButton(
                            padding: EdgeInsets.only(left: 120),
                            alignment: Alignment.centerRight,
                            icon: Icon(Icons.calendar_today_outlined),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Selecione um Especialista",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                offset: Offset(1, 10))
                          ]),
                      child: ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 70),
                          child: criarEspecialista(
                              "assets/barbeiro.jpg", "Claudio"),
                        );
                      }),
                    )
                  ],
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}

Widget criarEspecialista(imagemEspecialista, nomeEspecialista) {
  return Container(
    height: 120,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          height: 10,
          width: 90,
          margin: EdgeInsets.only(left: 10, bottom: 40),
          child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imagemEspecialista),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(100)),
              )),
        ),
      ],
    ),
  );
}
