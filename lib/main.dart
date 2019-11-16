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
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                print("Te regresaste");
              }
          ),
          title: Text(gestos),
        ),
        body:
          GestureDetector(
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
      ),
    );
  }
}
