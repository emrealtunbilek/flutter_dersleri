import 'dart:math' as math;

import 'package:flutter/material.dart';

class CollapsableToolbarOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.red,
          expandedHeight: 300,
          floating: true,
          pinned: true,
          snap: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Sliver App Bar"),
            centerTitle: true,
            background: Image.asset("assets/images/emre.jpg", fit: BoxFit.cover,),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            sabitListeElemanlari(),
          ),
        ),
      ],
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 1",style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
      ),
      Container(
        height: 100,
        color: Colors.teal,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 2",style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 3",style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
      ),
      Container(
        height: 100,
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 4",style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
      ),
      Container(
        height: 100,
        color: Colors.purple,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 5",style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
      ),
      Container(
        height: 100,
        color: Colors.cyan,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 6",style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
      ),
    ];
  }
}
