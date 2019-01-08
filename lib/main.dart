import 'package:flutter/material.dart';
import 'package:ilk_flutter_projesi/ui/custom_scroll_ve_slivers.dart';
import 'package:ilk_flutter_projesi/ui/navigasyon_islemleri.dart';
import 'ui/grid_view_kullanimi.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Dersleri",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    home: NavigasyonIslemleri(),
  ));
}

