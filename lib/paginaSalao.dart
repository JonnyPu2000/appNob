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
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.arrow_back_ios)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 2,
              child: Container(
                height: 320,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  nomeSalao,
                  style: TextStyle(
                    fontSize: 25,
                    height: 1.5,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 37,
            ),
            //Widget que possui os serviços
            Container(
                height: 200,
                margin: EdgeInsets.only(right: 30, left: 30),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[400],
                          blurRadius: 10,
                          offset: Offset(0, 10))
                    ]),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: SizedBox(
                      height: 50,
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          AspectRatio(
                            aspectRatio: 22 / 10,
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                margin: EdgeInsets.only(right: 7),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Center(
                                  child: Text("Cabelo"),
                                ),
                              ),
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 22 / 10,
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                margin: EdgeInsets.only(right: 7),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Center(
                                  child: Text("Barba"),
                                ),
                              ),
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 22 / 10,
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                margin: EdgeInsets.only(right: 7),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Center(
                                  child: Text("Tintura"),
                                ),
                              ),
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 22 / 10,
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                margin: EdgeInsets.only(right: 7),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Center(
                                  child: Text("Noiva"),
                                ),
                              ),
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 22 / 10,
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                margin: EdgeInsets.only(right: 7),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Center(
                                  child: Text("Corte"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
