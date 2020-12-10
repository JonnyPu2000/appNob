import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

// Teste
class SalaoService extends StatefulWidget {
  String nomeSalao;
  String image;

  SalaoService({this.image, this.nomeSalao});

  @override
  _SalaoServiceState createState() =>
      _SalaoServiceState(image: image, nomeSalao: nomeSalao);
}

class _SalaoServiceState extends State<SalaoService> {
  String nomeSalao;
  String image;
  String data = "Datas Disponíveis";
  String hora = "Horários Dispoínveis ";
  double size = 60;

  _SalaoServiceState({this.nomeSalao, this.image});

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
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Selecione um Profissional",
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
                    children: [],
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
                        margin: EdgeInsets.only(right: 60, left: 60),
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
                            IconButton(
                              padding: EdgeInsets.only(left: 40),
                              alignment: Alignment.centerRight,
                              icon: Icon(Icons.calendar_today_outlined),
                              onPressed: () {
                                DatePicker.showDatePicker(context,
                                    theme: DatePickerTheme(
                                      containerHeight: 210,
                                    ),
                                    showTitleActions: true,
                                    minTime: DateTime.now(),
                                    maxTime: DateTime(2022),
                                    onConfirm: (_data) {
                                  print("Confirmar $data");
                                  data =
                                      "${_data.day} - ${_data.month} - ${_data.year}";
                                  setState(() {});
                                },
                                    currentTime: DateTime.now(),
                                    locale: LocaleType.pt);
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("$data"),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Selecione um Horário",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 60,
                        margin: EdgeInsets.only(right: size, left: size),
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
                            IconButton(
                              padding: EdgeInsets.only(left: 20),
                              alignment: Alignment.centerRight,
                              icon: Icon(Icons.access_time_sharp),
                              onPressed: () {
                                DatePicker.showTimePicker(context,
                                    theme: DatePickerTheme(
                                      containerHeight: 210,
                                    ),
                                    showTitleActions: true, onConfirm: (_hora) {
                                  print("Confirmar $hora");
                                  hora = "${_hora.hour} : ${_hora.minute}";
                                  size = 120;
                                  setState(() {});
                                },
                                    currentTime: DateTime.now(),
                                    locale: LocaleType.pt);
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text("$hora"),
                            ),
                          ],
                        ),
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
