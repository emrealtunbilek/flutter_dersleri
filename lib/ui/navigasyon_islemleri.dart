import 'package:flutter/material.dart';

class NavigasyonIslemleri extends StatelessWidget {
  String baslik = "B SAYFASI";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Navigasyon İşlemleri",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("A Sayfasına Git"),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ASayfasi()),
                );
              },
            ),
            RaisedButton(
              child: Text("B Sayfasına Git ve Veri Gönder"),
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BSayfasi(baslik)),
                );
              },
            ),
            RaisedButton(
              child: Text("C Sayfasına Git ve Geri Gel"),
              color: Colors.purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CSayfasi()),
                );
              },
            ),
          ],
        )));
  }
}

class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "A Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "A SAYFASI",
              style: TextStyle(color: Colors.red, fontSize: 24),
            )
          ],
        )));
  }
}

class BSayfasi extends StatelessWidget {
  String gelenBaslikVerisi;

  BSayfasi(this.gelenBaslikVerisi);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            gelenBaslikVerisi,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              gelenBaslikVerisi,
              style: TextStyle(color: Colors.red, fontSize: 24),
            )
          ],
        )));
  }
}

class CSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "C Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "C SAYFASI",
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
            RaisedButton(
              color: Colors.purple,
              child: Text("Geri Dön"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),

            RaisedButton(
              color: Colors.purple,
              child: Text("A Sayfasına Git"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ASayfasi()));
              },
            ),
          ],
        )));
  }
}
