import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: "MaterialApp Title",
      home: MyHomePage(
        title: "My Home Page2",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int sayac = 0;

  MyHomePage({this.title}){
    debugPrint("MyHomePage Statefull Widger constructor");
  }

  @override
  State<StatefulWidget> createState() {
    debugPrint("MyHomePage create state tetiklendi");
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {

  MyHomePageState(){
    debugPrint("MyHomePageState constructor tetiklendi");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePageState  build methodu tetiklendi");
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sayacDegeriniArtir();
            debugPrint("sayac degeri arttırıldı set state cagrıldı");
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Butona Basılma Sayısı :"),
            Text(
              "${widget.sayac}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  void sayacDegeriniArtir() {
    widget.sayac++;
    debugPrint("Sayac degeri : ${widget.sayac}");
  }
}
