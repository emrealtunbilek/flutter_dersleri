import 'dart:math' as math;

import 'package:flutter/material.dart';

class CollapsableToolbarOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return CustomScrollView(

    slivers: <Widget>[
      SliverAppBar(
        title: Text("Sliver App Bar"),
        backgroundColor: Colors.red,
        expandedHeight: 200,
        floating: true,
      ),
     /* SliverList(),
      SliverFixedExtentList(),
      SliverGrid(),
      SliverGrid.count(crossAxisCount: 2),
      SliverGrid.extent(maxCrossAxisExtent: 200),*/
    ],

    );
  }

}