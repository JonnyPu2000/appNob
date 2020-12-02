import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'createService.dart';
import 'package:curso_project/paginaSalao_Service.dart';
import 'package:curso_project/paginaSalao_Prof.dart';

Widget makeItem({image, tag, nomeSalao, context, endereco, telefone}) {
  return Hero(
    tag: tag,
    child: GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 10,
                      offset: Offset(0, 10)),
                ]),
          ),
          Card(
            margin: EdgeInsets.only(bottom: 40),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: ExpansionTile(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$nomeSalao",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "$telefone",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              childrenPadding: EdgeInsets.all(18),
              children: [
                FlatButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CupertinoAlertDialog(
                              title: Text("Agendar Por"),
                              actions: [
                                CupertinoDialogAction(
                                  child: Text("Serviço"),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SalaoService(
                                                image: image,
                                                nomeSalao: nomeSalao)));
                                  },
                                ),
                                CupertinoDialogAction(
                                  child: Text("Profissional"),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SalaoProf(
                                                image: image,
                                                nomeSalao: nomeSalao)));
                                  },
                                )
                              ],
                            );
                          });
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[600],
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "Agendar Agora",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
