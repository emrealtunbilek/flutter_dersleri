import 'package:flutter/material.dart';

class FormIslemleri extends StatefulWidget {
  @override
  _FormIslemleriState createState() => _FormIslemleriState();
}

class _FormIslemleriState extends State<FormIslemleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Input Islemleri"),
        ),
        body: ListView(
          children: <Widget>[

            TextField(),

            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              color: Colors.teal.shade400,
              child: Align(
                alignment: Alignment.center,
                child: Text("Merhaba Flutter"),
              ),
            ),
          ],
        ));
  }
}
