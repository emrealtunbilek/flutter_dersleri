import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan, accentColor: Colors.orange),
      home: new Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Dersleri",
            style: TextStyle(fontSize: 24.0, color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("FAB tıklandı");
          },
          //backgroundColor: Colors.green,
          child: Icon(
            Icons.access_alarms,
            color: Colors.white,
          ),
        ),
        body: Container(
            color: Colors.green,
            child: Text(
              "Flutter Dersleri by Emre Altunbilek",
              style: TextStyle(fontSize: 48),
              textAlign: TextAlign.center,
            ),
            constraints: BoxConstraints.expand(width: 400, height: 400),
          margin: EdgeInsets.symmetric(horizontal: 5,vertical: 80),
          padding: EdgeInsets.only(top:120.0),
            

        ),
      ),
    ),
  );
}
