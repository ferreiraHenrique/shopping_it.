import 'package:flutter/material.dart';
import 'package:shopping_it/presentation/create_list.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                          "Shopping\nIt.",
                          style: TextStyle(
                            color: Color.fromRGBO(44, 45, 51, 1),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20, top: 20),
                      child: Image.asset(
                        "assets/images/home-shopping-cart.png",
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
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
                      Text(
                        "Minhas listas",
                        style: TextStyle(
                          color: Color.fromRGBO(44, 45, 51, 1),
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 20),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateListPage(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          // margin: EdgeInsets.only(top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(253, 246, 244, 1),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Criar nova lista",
                                  style: TextStyle(
                                    color: Color.fromRGBO(44, 45, 51, 1),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Icon(Icons.create, size: 14)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      for (var i in [1, 2, 3, 4, 5, 6])
                        Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(253, 246, 244, 1),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Lista $i | Jul. 2020"),
                              Text(
                                "$i produtos",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
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
    );
  }
}
