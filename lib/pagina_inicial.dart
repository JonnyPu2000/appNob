import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Widgets/createService.dart';
import 'Widgets/makeItem.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaInicial(),
    ));

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: null,
        title: Text(
          "Salões",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.5,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            onPressed: null,
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            onPressed: null,
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: (Column(
            children: [
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AspectRatio(
                      aspectRatio: 2.7 / 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(20)
                            //borderRadius:
                            ),
                        child: Center(
                          child: Text(
                            "Todos",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.7 / 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Center(
                          child: Text(
                            "Frequentes",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.7 / 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Center(
                          child: Text(
                            "Novidades",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              makeItem(
                  image: 'assets/salao1.jpg',
                  endereco: "Higienopolis",
                  tag: 'alo',
                  nomeSalao: "Dona Maricota",
                  context: context,
                  telefone: "(11) 97145-3768"),
              makeItem(
                  image: 'assets/salao2.jpg',
                  tag: 'alooo',
                  nomeSalao: "Chica cabelo",
                  telefone: "(11) 97522-6904",
                  context: context),
              makeItem(
                  image: 'assets/salao3.jpg',
                  telefone: "(11) 97638-5947",
                  tag: 'aloo',
                  nomeSalao: "Beauty Blow",
                  context: context)
            ],
          )),
        ),
      ),
    );
  }
}
