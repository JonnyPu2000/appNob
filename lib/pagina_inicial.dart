import 'package:curso_project/paginaSalao.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              fontFamily: "Montserrat-Regular"),
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
                tag: 'alo',
                nomeSalao: "Dona Maricota",
                context: context,
              ),
              makeItem(
                  image: 'assets/salao2.jpg',
                  tag: 'alooo',
                  nomeSalao: "Chica cabelo",
                  context: context),
              makeItem(
                  image: 'assets/salao3.jpg',
                  tag: 'aloo',
                  nomeSalao: "Beauty Blow",
                  context: context)
            ],
          )),
        ),
      ),
    );
  }

  Widget makeItem({image, tag, nomeSalao, context}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Salao(
                        image: image,
                        nomeSalao: nomeSalao,
                      )));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 40),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[400],
                    blurRadius: 10,
                    offset: Offset(0, 10))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Text(
                          nomeSalao,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          nomeSalao,
                          style: TextStyle(
                            fontSize: 30,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 1
                              ..color = Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.favorite_border,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
