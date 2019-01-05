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
      home: MyHomePage(title: "My Home Page2",),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final String title;

  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Butona Basılma Sayısı :"),
            Text("5",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
