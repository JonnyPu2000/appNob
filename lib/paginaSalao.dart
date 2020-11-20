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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image),
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.darken),
                  fit: BoxFit.fitWidth)),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: IconButton(
                          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                          onPressed: null),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
