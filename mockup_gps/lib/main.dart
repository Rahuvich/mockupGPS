import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
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
                  Text("Grups",
                  style:TextStyle(
                    fontSize: 25
                  )),
                  ListTile(leading: Icon(FontAwesomeIcons.circle, size: 15,),
                  title: Text("PAR 14"),
                  subtitle: Text("Alex Sanchez, Miquel Albiol, Dani Ponce"),),
                  ListTile(leading: Icon(FontAwesomeIcons.circle, size: 15,),
                  title: Text("ER 12"),
                  subtitle: Text("Alex Sanchez, David Gonzalez, Willy Hernangomez"),),
                  ListTile(leading: Icon(FontAwesomeIcons.checkCircle, size: 15, color: Colors.purple,),
                  title: Text("GPS 14"),
                  subtitle: Text("Alex Sanchez, Joaquin Reyes, Felipe Hernandez"),),
                  ListTile(leading: Icon(FontAwesomeIcons.circle, size: 15,),
                  title: Text("SI 11"),
                  subtitle: Text("Alex Sanchez, Nikola Mirotić, Pau G."),),
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
        title: Text("Omniversity"),
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.ellipsisV),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 10
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text("Carpetes",
            style:TextStyle(color: Colors.grey.shade500, fontSize: 22)),
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
                        Text("Lab$i",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey
                        ),)
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
            style:TextStyle(color: Colors.grey.shade500, fontSize: 22)),
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.trello,
                color: Colors.grey,
              ),
              title: Text(
                "To-do",
                style: TextStyle(color: Colors.grey.shade500),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.googleDrive,
                color: Colors.purple,
              ),
              title: Text(
                "Arxius",
                style: TextStyle(color: Colors.purple),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.comment,
                color: Colors.grey.shade500,
              ),
              title: Text(
                "Xat",
                style: TextStyle(color: Colors.grey.shade500),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.info,
                color: Colors.grey.shade500,
              ),
              title: Text(
                "Info",
                style: TextStyle(color: Colors.grey.shade500),
              )),
        ],
      ),
    );
  }
}
