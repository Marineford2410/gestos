import 'package:flutter/material.dart';

void main() => runApp(Gestos());

class Gestos extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Estado();
  }
}

class Estado extends State {

  String gestos = "Gestos";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child : Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 7, 94, 84),
            /*leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  print("Te regresaste");
                }
            ),*/
            title: Text("WhatsApp"),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print("Quieres buscar algo");
                },
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print("Quieres buscar algo");
                },
              ),
            ],
            bottom: TabBar(
                tabs: [
                  Tab(child: Icon(Icons.camera_alt)),
                  Tab(child: Text("Chats")),
                  Tab(child: Text("Estados")),
                  Tab(child: Text("Llamadas"))
                ]
            ),
          ),
          body:
            TabBarView(
                children: [
                  Center(child: Text("Vista de la camara")),
                  Center(child: Text("Mensajes Escritos")),
                  Center(child: Text("Si revisas mucho los estados eres toxico")),
                  Center(child: Text("Para llamar contactos que tienes en WhatsApp elige un contacto"))
                ]
            ),
            drawer: Drawer(
              elevation: 16.0,
              child: ListView(
                children: <Widget>[
                  DrawerHeader(
                    child: Text("Menu Drawer"),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.mail),
                    title: Text("Bandeja de Entrada"),
                    onTap: () {
                      print("Abriendo correos");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.spa),
                    title: Text("Correos no Deseados"),
                    onTap: () {
                      print("Abriendo correos");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.delete_forever),
                    title: Text("Eliminados"),
                    onTap: () {
                      print("Abriendo correos");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.print),
                    title: Text("Imprimir"),
                    onTap: () {
                      print("Abriendo correos");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.sentiment_dissatisfied),
                    title: Text("Cerrar Sesion"),
                    onTap: () {
                      print("Abriendo correos");
                    },
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.message),
              backgroundColor: Color.fromARGB(255, 7, 94, 84),
              onPressed: (){
                print("Enviaando mensaje");
              },
            ),
          ),
      )
    );
  }

  /*
  * GestureDetector(
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTkdvwnQo8FJbsjGZgdEgMLNuWszgdSH7keRL4dbZkga-uFyJar", width: 400),
              // child: Text("Presioname :O"),
              onTap: (){
                setState(() {
                  gestos = "Diste un tap";
                });
              },
              onDoubleTap: () {
                setState(() {
                  gestos = "Diste doble tab";
                });
              },
              onLongPress: () {
                setState(() {
                  gestos = "Tap largo";
                });
              },
            ),
  * */

}
