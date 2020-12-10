import "package:flutter/material.dart";

Widget criarProfissional(imagemProfissional, nomeProfissional, service) {
  bool pressed = false;

  return Column(
    children: [
      InkWell(
        onTap: () {},
        child: Container(
            margin: EdgeInsets.all(14),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                border: Border.all(
                    color: pressed ? Colors.black : Colors.transparent),
                image: DecorationImage(
                    image: AssetImage(imagemProfissional),
                    fit: BoxFit.fitHeight),
                borderRadius: BorderRadius.circular(100))),
      ),
      Text(nomeProfissional),
      Text(
        service,
        style: TextStyle(color: Colors.grey),
      )
    ],
  );
}
