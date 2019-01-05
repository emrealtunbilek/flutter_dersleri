import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        /* textTheme: TextTheme(
          display2: TextStyle(fontSize: 12),
        ),*/

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
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {

  _MyHomePageState(){
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
            _sayacDegeriniArtir();
            debugPrint("sayac degeri arttırıldı set state cagrıldı");
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(child: Text("Artır"), color: Colors.green, onPressed: (){
              _sayacDegeriniArtir();
            },),
            Text(
                "${widget.sayac}",
                style: Theme.of(context).textTheme.display2.copyWith(
                    color: widget.sayac <= 0 ? Colors.red : Colors.green
                )

            ),
            RaisedButton(child: Text("Azalt"), color: Colors.red, onPressed: _sayacDegeriniAzalt,),
          ],
        ),
      ),
    );
  }

  void _sayacDegeriniArtir() {
    setState(() {
      widget.sayac++;
      debugPrint("Sayac degeri : ${widget.sayac}");
    });

  }
  void _sayacDegeriniAzalt() {
    setState(() {
      widget.sayac--;
      debugPrint("Sayac degeri : ${widget.sayac}");
    });

  }
}
