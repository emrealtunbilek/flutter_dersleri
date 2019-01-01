import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan, accentColor: Colors.orange),
      home: Scaffold(
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
          color: Colors.red,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.yellow,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.blue,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.orange,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.purple,
              ),
              
            ],
          ),
        ),
      ),
    ),
  );
}
