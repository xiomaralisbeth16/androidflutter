import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  @override
  MyHome createState() => MyHome();
}


class MyHome extends State<SplashScreen> {


  static var assetImagen = new AssetImage('img/corazon.PNG');
  var imagen = new Image(image: assetImagen, width: 91.95, height: 74.64);

  @override
  void initState(){
    super.initState();

    iniciarCambio().then(
            (value){
          changeScreen();
        }
    );

  }

  Future iniciarCambio () async{
    await Future.delayed(Duration(seconds: 3));
  }

  void changeScreen() async{
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SegundaPantalla()));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    imagen,
                    Text(
                      "SOULmet",
                      style: new TextStyle(fontSize: 65),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[Text("find your soul mate with us!")],
                ),


              ],

            )));
  }
}



var assetImagenMain = new AssetImage('img/mainCard.png');
var imagenMain = new Image(image: assetImagenMain, width: 317, height: 401);

var assetImagenLeft = new AssetImage('img/leftCard.png');
var imagenLeft = new Image(image: assetImagenLeft, width: 317, height: 401);

var assetImagenRigth = new AssetImage('img/rigthCard.png');
var imagenRigth = new Image(image: assetImagenRigth, width: 317, height: 401);

var assetImagen1 = new AssetImage('img/rigthCard.png');
var imagen1 = new Image(image: assetImagen1, width: 82, height: 86.13);

var assetImagen2 = new AssetImage('img/mainCard.png');
var imagen2 = new Image(image: assetImagen2, width: 82, height: 86.13);

var assetImagen3 = new AssetImage('img/leftCard.png');
var imagen3 = new Image(image: assetImagen3, width: 82, height: 86.13);

var assetImagen4 = new AssetImage('img/4friend.png');
var imagen4 = new Image(image: assetImagen4, width: 82, height: 86.13);

Row misBotones(int n) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      ButtonTheme(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
        ),
        child: FlatButton(
          child: Column(
            children: <Widget>[
              Icon(Icons.dashboard, color: Colors.white),
              Text("Home", style: new TextStyle(color: Colors.white)),
            ],
          ),
          disabledColor: Color(0xff4A00E0),
        ),
      ),
      ButtonTheme(
        child: FlatButton(
          child: Column(
            children: <Widget>[Icon(Icons.favorite_border), Text("Connection")],
          ),
        ),
      ),
      ButtonTheme(
        child: FlatButton(
          child: Column(
            children: <Widget>[
              Icon(Icons.chat_bubble_outline),
              Text("Chats"),
            ],
          ),
        ),
      ),
      ButtonTheme(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20)
          ),
        ),
        child: FlatButton(
          child: Column(
            children: <Widget>[
              Icon(Icons.person_outline),
              Text("Profile"),
            ],
          ),
        ),
      ),
    ],
  );
}

class SegundaPantalla extends StatelessWidget {
  Container cards(Image imagen, String title) {
    return Container(
      width: 317,
      height: 641,
      child: Card(
        child: Wrap(
          children: <Widget>[
            new ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(28)),
                child: imagen),
            ListTile(
              title: Text(
                title,
                style: new TextStyle(fontSize: 18),
              ),
              subtitle: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "This is some description about the person"
                        "what he she expects from the partner and"
                        "also what they want to achieve  the life.",
                    style: new TextStyle(fontSize: 16),
                  )),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 158,
                    height: 50,
                    child: FlatButton.icon(
                      disabledColor: Color(0xffD31027),
                      icon: Icon(Icons.favorite_border, color: Colors.white),
                      label: Text("Connect",
                          style: new TextStyle(color: Colors.white)),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 150,
                    height: 50,
                    child: FlatButton.icon(
                      disabledColor: Color(0xff329B79),
                      icon: Icon(Icons.send, color: Colors.white),
                      label: Text("Send",
                          style: new TextStyle(color: Colors.white)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Column(
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      cards(imagenLeft, "JANE DOE"),
                      cards(imagenMain, "JANE DOE"),
                      cards(imagenRigth, "JANE DOE")
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                    ),
                    child: FlatButton(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.dashboard, color: Colors.white),
                          Text("Home",
                              style: new TextStyle(color: Colors.white)),
                        ],
                      ),
                      disabledColor: Color(0xff4A00E0),
                    ),
                  ),
                  ButtonTheme(
                    child: FlatButton(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.favorite_border),
                          Text("Connection")
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TerceraPantalla()),
                        );
                      },
                    ),
                  ),
                  ButtonTheme(
                    child: FlatButton(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.chat_bubble_outline),
                            Text("Chats"),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CuartaPantalla()),
                          );
                        }
                    ),
                  ),
                  ButtonTheme(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: FlatButton(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.person_outline),
                            Text("Profile"),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuintaPantalla()),
                          );
                        }
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

class TerceraPantalla extends StatelessWidget {
  Container listaContactos(String nombre, Image img) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(nombre),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text("Enjoying life and living with love."),
                ),
                FlatButton.icon(
                  disabledColor: Color(0xff6B81AA),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  icon: Icon(Icons.delete_outline, color: Colors.white),
                  label: Text(
                    "Remove",
                    style: new TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            new ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(40)), child: img)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  listaContactos("Jim Doe", imagen1),
                  listaContactos("Jane Doe", imagen2),
                  listaContactos("John Doe", imagen3),
                  listaContactos("Ek aur Doe", imagen4)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                  ),
                  child: FlatButton(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.dashboard),
                        Text("Home"),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SegundaPantalla()),
                      );
                    },
                  ),
                ),
                ButtonTheme(
                  child: FlatButton(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.favorite_border, color: Colors.white),
                        Text("Connection",
                            style: new TextStyle(color: Colors.white))
                      ],
                    ),
                    disabledColor: Color(0xff4A00E0),
                  ),
                ),
                ButtonTheme(
                  child: FlatButton(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.chat_bubble_outline),
                          Text("Chats"),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CuartaPantalla()),
                        );
                      }),
                ),
                ButtonTheme(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: FlatButton(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.person_outline),
                          Text("Profile"),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuintaPantalla()),
                        );
                      }
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CuartaPantalla extends StatelessWidget {
  Container listaContactos(
      String nombre, String tiempo, String mensaje, Image img) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(nombre),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(tiempo),
              ),
              ButtonTheme(
                minWidth: 100,
                child: FlatButton.icon(
                  disabledColor: Color(0xff6B81AA),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  icon: Icon(Icons.send),
                  label: Text(mensaje),
                ),
              )
            ],
          ),
          new ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40)), child: img)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  listaContactos("Jim Doe", "seen 2 mins ago",
                      "Hey want to catch up today?", imagen1),
                  listaContactos(
                      "Jane Doe",
                      "online",
                      "Ohh that's cool. Would love to\n"
                          "meet you! Dinner?",
                      imagen2),
                  listaContactos(
                      "John Doe",
                      "seen 10 mins ago",
                      "I cannot believe this! This is\n "
                          "ridiculous!",
                      imagen3),
                  listaContactos(
                      "Ek aur Doe",
                      "online",
                      "Bhai mille timepass hojayega\n"
                          "dono ka",
                      imagen4),
                  listaContactos(
                      "Ye b Doe",
                      "online",
                      "Tu mat mil bhai mood nai\n"
                          "bigadna milke",
                      imagen1)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                  ),
                  child: FlatButton(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.dashboard),
                        Text("Home"),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SegundaPantalla()),
                      );
                    },
                  ),
                ),
                ButtonTheme(
                  child: FlatButton(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.favorite_border),
                          Text("Connection")
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TerceraPantalla()),
                        );
                      }
                  ),
                ),
                ButtonTheme(
                  child: FlatButton(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.chat_bubble_outline, color: Colors.white),
                        Text("Chats",
                            style: new TextStyle(color: Colors.white)),
                      ],
                    ),
                    disabledColor: Color(0xff4A00E0),
                  ),
                ),
                ButtonTheme(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: FlatButton(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.person_outline),
                          Text("Profile"),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuintaPantalla()),
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class QuintaPantalla extends StatelessWidget {

  Container datosUser(String title,String text){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title),
            TextFormField(
              initialValue: text,
            )
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                child: imagen3),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text("JOHN DOE"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                  minWidth: 174,
                  height: 70,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                  ),
                  child: FlatButton(
                    disabledColor: Colors.white70,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.favorite_border),
                            Text("30")
                          ],
                        ),
                        Text("Connections"),
                      ],
                    ),
                  ),
                ),
                ButtonTheme(
                  minWidth: 174,
                  height: 70,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                  ),
                  child: FlatButton(
                    disabledColor: Colors.white70,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[Icon(Icons.message), Text("10")],
                        ),
                        Text("Chats"),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 328,
              child: Column(
                children: <Widget>[
                  datosUser("Status","Sab jaana jaruri hai?"),
                  datosUser("Email","maibdoehai@doerox.com"),
                  datosUser("Phone Number","+91 9123456789"),
                  datosUser("Date of birth","31st February, 1989"),
                ],
              ),
            ),
            ButtonTheme(
                minWidth: 328,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.all(Radius.circular(30)),
                ),
                child: FlatButton(
                  disabledColor: Color(0xffD31027),
                  child: Column(
                    children: <Widget>[
                      Text("Log Out",style: new TextStyle(color: Colors.white)),
                    ],
                  ),
                )
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                  ),
                  child: FlatButton(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.dashboard),
                        Text("Home"),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SegundaPantalla()),
                      );
                    },
                  ),
                ),
                ButtonTheme(
                  child: FlatButton(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.favorite_border),
                          Text("Connection")
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TerceraPantalla()),
                        );
                      }
                  ),
                ),
                ButtonTheme(
                  child: FlatButton(
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.chat_bubble_outline),
                          Text("Chats"),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CuartaPantalla()),
                        );
                      }
                  ),
                ),
                ButtonTheme(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: FlatButton(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.person_outline, color: Colors.white),
                        Text("Profile",
                            style: new TextStyle(color: Colors.white)),
                      ],
                    ),
                    disabledColor: Color(0xff4A00E0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
