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
          body: Center(
            child: Container(
              color: Colors.green,
              child: Text("Flutter CheatSheet.",style: TextStyle(fontSize: 24),),
            ),
          ),
      ),
    ),
  );
}
