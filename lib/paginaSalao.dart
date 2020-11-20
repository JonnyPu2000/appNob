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
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3 + 20,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      image,
                      colorBlendMode: BlendMode.darken,
                      color: Colors.black.withOpacity(0.6),
                      fit: BoxFit.fill,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
