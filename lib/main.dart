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
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                    child: Icon(
                      Icons.add_circle,
                      size: 64,
                      color: Colors.yellow,
                    ),
                  color: Colors.blue.shade200,
                ),
                flex: 2,
              ),

              Expanded(
                child: Container(
                  child: Icon(
                    Icons.add_circle,
                    size: 64,
                    color: Colors.yellow,
                  ),
                  color: Colors.green.shade200,
                ),
                flex: 2,
              ),

              Expanded(
                child: Container(
                  child: Icon(
                    Icons.add_circle,
                    size: 64,
                    color: Colors.yellow,
                  ),
                  color: Colors.purple.shade200,
                ),
                flex: 4,
              ),

              Expanded(
                child: Container(
                  child: Icon(
                    Icons.add_circle,
                    size: 64,
                    color: Colors.yellow,
                  ),
                  color: Colors.orange.shade200,
                ),
                flex: 6,
              ),

            ],
          ),
        ),
      ),
    ),
  );
}
