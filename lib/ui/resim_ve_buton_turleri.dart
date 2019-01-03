import 'package:flutter/material.dart';

class ResimveButonTurleri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Text(
          "Resim ve Buton Türleri",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset("assets/images/emre.jpg"),
                      Text("Asset Image"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                          "http://hdqwalls.com/wallpapers/small-memory-lp.jpg"),
                      Text("Network Image"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png"),
                        backgroundColor: Colors.purple,
                        radius: 30,
                        foregroundColor: Colors.orange,
                      ),
                      Text("Circle Avatar"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FadeInImage.assetNetwork(
                          placeholder: "assets/images/loading.gif",
                          image:
                          "http://hdqwalls.com/wallpapers/small-memory-lp.jpg"),
                      Text("FadeinImage"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlutterLogo(
                        size: 60,
                        colors: Colors.orange,
                        style: FlutterLogoStyle.horizontal,
                        textColor: Colors.black,
                      ),
                      Text("Flutter Logo"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Placeholder(
                          color: Colors.red,
                          strokeWidth: 2,
                        ),
                      ),
                      Text("Placeholder Widget"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                child: Text("Emre Altunbilek"),
                color: Colors.orange,
                onPressed: () => debugPrint("Fat arrowlu fonksiyon"),
              ),
              RaisedButton(
                child: Text("Flutter ve Dart Dersleri"),
                elevation: 12,
                textColor: Colors.yellow,
                onPressed: () {
                  debugPrint("Normal lambda expression");
                  debugPrint("İkinci satır");
                },
                color: Colors.purple,
              ),
              RaisedButton(
                child: Text("Hızla devam ediyor"),
                elevation: 12,
                textColor: Colors.black,
                onPressed: () {
                  uzunMethod();
                },
                color: Colors.red,
              ),
              RaisedButton(
                child: Text("Calısmaya Devam"),
                elevation: 12,
                textColor: Colors.black,
                onPressed: uzunMethod,
                color: Colors.blue,
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 32,
                  ),
                  onPressed: () {}
              ),
              FlatButton(onPressed: (){}, child: Text("Flat Button", style: TextStyle(fontSize: 24),))
            ],
          ),
        ),
      ],
    );
  }

  void uzunMethod() {
    debugPrint("Cok uzun içerikli fonksiyon");
  }

}