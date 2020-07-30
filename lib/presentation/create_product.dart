import 'package:flutter/material.dart';

class CreateProductPage extends StatefulWidget {
  CreateProductPage() : super();

  @override
  _CreateProductPageState createState() => _CreateProductPageState();
}

class _CreateProductPageState extends State<CreateProductPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Color.fromRGBO(253, 208, 16, 1),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Expanded(
                          child: Text(
                            "Shopping It.",
                            style: TextStyle(
                              color: Color.fromRGBO(44, 45, 51, 1),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(254, 250, 249, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                              color: Color.fromRGBO(44, 45, 51, 1),
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Novo produto",
                              style: TextStyle(
                                color: Color.fromRGBO(44, 45, 51, 1),
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        Container(
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(254, 250, 249, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                width: 3,
                                color: Color.fromRGBO(236, 233, 227, 1),
                              )),
                          child: TextField(
                            style: TextStyle(
                              color: Color.fromRGBO(44, 45, 51, 1),
                            ),
                            decoration: InputDecoration(
                              hintText: "Nome do produto",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(0),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(254, 250, 249, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                              width: 3,
                              color: Color.fromRGBO(236, 233, 227, 1),
                            ),
                          ),
                          child: TextField(
                            style: TextStyle(
                              color: Color.fromRGBO(44, 45, 51, 1),
                            ),
                            decoration: InputDecoration(
                              hintText: "Unidade",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(0),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(254, 250, 249, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                              width: 3,
                              color: Color.fromRGBO(236, 233, 227, 1),
                            ),
                          ),
                          child: TextField(
                            style: TextStyle(
                              color: Color.fromRGBO(44, 45, 51, 1),
                            ),
                            decoration: InputDecoration(
                              hintText: "Quantidade",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(0),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(254, 250, 249, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                              width: 3,
                              color: Color.fromRGBO(236, 233, 227, 1),
                            ),
                          ),
                          child: TextField(
                            style: TextStyle(
                              color: Color.fromRGBO(44, 45, 51, 1),
                            ),
                            decoration: InputDecoration(
                              hintText: "Valor",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(0),
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        FlatButton(
                          onPressed: () {
                            print("Created");
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: Color.fromRGBO(253, 208, 16, 1),
                            ),
                            child: Text(
                              "Criar",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
