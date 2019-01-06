import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.center,
          color: Colors.teal[100 * ((index+1) % 8)],
          child: Text(
            "Merhaba Flutter $index",
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}

/*
*  GridView.extent(
      //reverse: true,
      maxCrossAxisExtent: 500,
      primary: false,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 1",textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 2",textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 3",textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 4",textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 5",textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 6",textAlign: TextAlign.center,),
        ),


      ],

    );
* */

/*
* GridView.count(
      crossAxisCount: 2,
      reverse: true,
      primary: false,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 1",textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 2",textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 3",textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 4",textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 5",textAlign: TextAlign.center,),
        ),

        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child:Text("Merhaba Flutter 6",textAlign: TextAlign.center,),
        ),


      ],

    );
*
* */
