import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("alex.sanchez@est.fib.upc.es"),
              accountName: Text("Alex Sanchez"),
              currentAccountPicture: CircleAvatar(
                child: Text("AS"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("Grups", style: TextStyle(fontSize: 25)),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.circle,
                      size: 15,
                    ),
                    title: Text("PAR 14"),
                    subtitle: Text("Alex Sanchez, Miquel Albiol, Dani Ponce"),
                  ),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.circle,
                      size: 15,
                    ),
                    title: Text("ER 12"),
                    subtitle:
                        Text("Alex Sanchez, David Gonzalez, Willy Hernangomez"),
                  ),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.checkCircle,
                      size: 15,
                      color: Colors.blue,
                    ),
                    title: Text("GPS 14"),
                    subtitle:
                        Text("Alex Sanchez, Joaquin Reyes, Felipe Hernandez"),
                  ),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.circle,
                      size: 15,
                    ),
                    title: Text("SI 11"),
                    subtitle: Text("Alex Sanchez, Nikola Mirotić, Pau G."),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.fileUpload),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.solidBell),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () {},
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                      height: 50,
                      alignment: Alignment.center,
                      color: Colors.blue.shade400,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Icon(
                              FontAwesomeIcons.trello,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "To-do",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(3, (i) {
                          return Container(
                            width: 200,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text("Llista $i"),
                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  children: List.generate(
                                      Random().nextInt(4) + 1, (i) {
                                    return Container(
                                      width: double.infinity,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      margin: EdgeInsets.symmetric(
                                        vertical: 5,

                                      ),
                                      padding: EdgeInsets.all(4),
                                      child: Text("To do..."),
                                    );
                                  }),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    border: BorderDirectional(
                        start: BorderSide(width: 3, color: Colors.blue))),
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 50,
                        alignment: Alignment.center,
                        color: Colors.blue.shade400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Arxius",
                              style: TextStyle(color: Colors.white),
                            ),
                            Spacer(),
                            IconButton(
                              icon: Icon(
                                Icons.history,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            )
                          ],
                        )),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text("Carpetes",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 22)),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(10, (i) {
                                return Container(
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.solidFolder,
                                        color: Colors.grey,
                                        size: 50,
                                      ),
                                      Text(
                                        "Lab$i",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Fitxers",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 22)),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Icon(
                                        FontAwesomeIcons.fileWord,
                                        size: 50,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    Text("Riscos14.doc")
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Icon(
                                        FontAwesomeIcons.fileCode,
                                        size: 50,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    Text("prog.c")
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                              height: 50,
                              alignment: Alignment.center,
                              color: Colors.blue.shade400,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    "Xats",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Professor",
                                    style:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                ],
                              )),
                          Expanded(
                            child: Center(
                              child: Text(
                                  "No hi ha missatges encara, envia el primer!"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 30),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.blue)),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration.collapsed(
                                        hintText: "Envia un missatge"),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(Icons.send),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
