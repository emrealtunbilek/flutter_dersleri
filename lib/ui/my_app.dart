import 'package:flutter/material.dart';
import 'row_column_odev.dart';


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
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
          body: RowColumnOdevCozumu()
      ),
    );
  }



}