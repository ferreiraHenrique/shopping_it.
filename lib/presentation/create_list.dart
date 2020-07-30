import 'package:flutter/material.dart';

class CreateListPage extends StatefulWidget {
  CreateListPage() : super();

  @override
  _CreateListPageState createState() => _CreateListPageState();
}

class _CreateListPageState extends State<CreateListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          IconButton(
                            padding: EdgeInsets.all(0),
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                              color: Color.fromRGBO(44, 45, 51, 1),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Container(
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
                                  hintText: "Nome da lista",
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Produtos ",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(44, 45, 51, 1),
                                ),
                              ),
                              Text(
                                "(10)",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(44, 45, 51, 1),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: <Widget>[
                              Text(
                                "Total ",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(44, 45, 51, 1),
                                ),
                              ),
                              Text(
                                "R\$ 90,00",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(255, 4, 4, 1),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
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
                            hintText: "Adicionar produto",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(0),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      for (var i in [1, 2, 3, 4])
                        Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(bottom: 20),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(253, 246, 244, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Checkbox(
                                    value: false,
                                    onChanged: (bool value) {
                                      print("Check item $i");
                                    },
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Produto $i",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromRGBO(44, 45, 51, 1),
                                        ),
                                      ),
                                      Text(
                                        "R\$ 3,59",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(44, 45, 51, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  IconButton(
                                    icon: Icon(
                                      Icons.delete_outline,
                                      color: Color.fromRGBO(44, 45, 51, 1),
                                    ),
                                    onPressed: () {
                                      print("Delete item $i");
                                    },
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
