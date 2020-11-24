import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
  DateTime _dataInfo;

  _SalaoState({this.nomeSalao, this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 230,
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
                Container(
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
                              child: Text('$_dataInfo'),
                            ),
                            IconButton(
                              padding: EdgeInsets.only(left: 88),
                              alignment: Alignment.centerRight,
                              icon: Icon(Icons.calendar_today_outlined),
                              onPressed: () async {
                                final data = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime
                                      .now(), //Função para abrir o date Picker
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2025),
                                );
                                String dataPT =
                                    DateFormat('dd-MM-yy').format(data);

                                return dataPT;
                              },
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
                        height: 180,
                        width: 500,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: [
                            criarEspecialista(
                                "assets/barbeiro.jpg", "João", "Manicure"),
                            criarEspecialista(
                                "assets/Salve.jpg", "Jefferson", "Corte"),
                            criarEspecialista(
                                "assets/barbeiro.jpg", "Anderson", "Massagem"),
                            criarEspecialista(
                                "assets/Salve.jpg", "Nilda", "Corte"),
                            criarEspecialista(
                                "assets/barbeiro.jpg", "Rubens", "Depilação"),
                            criarEspecialista(
                                "assets/Salve.jpg", "Kaio", "Tintura"),
                          ],
                        ),
                      ),
                      Text(
                        "Selecione um Horário",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// metodo para imagem e nome do Especialista
Widget criarEspecialista(imagemEspecialista, nomeEspecialista, service) {
  return Column(
    children: [
      Container(
          margin: EdgeInsets.all(14),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagemEspecialista), fit: BoxFit.fitHeight),
              borderRadius: BorderRadius.circular(100))),
      Text(nomeEspecialista),
      Text(
        service,
        style: TextStyle(color: Colors.grey),
      )
    ],
  );
}
