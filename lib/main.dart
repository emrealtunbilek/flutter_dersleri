import 'package:flutter/material.dart';
import 'package:ilk_flutter_projesi/ui/custom_scroll_ve_slivers.dart';
import 'package:ilk_flutter_projesi/ui/text_field_ozellikleri.dart';
import 'package:ilk_flutter_projesi/ui/navigasyon_islemleri.dart';
import 'ui/grid_view_kullanimi.dart';


void main() {
  runApp(MaterialApp(
    title: "Flutter Dersleri",

    initialRoute: "/textFieldIslemleri",

    routes: {
      '/'      : (context) => NavigasyonIslemleri(),
      '/textFieldIslemleri' : (context) => TextFieldIslemleri(),
      '/CPage' : (context) => CSayfasi(),
      '/DPage' : (context) => DSayfasi(),
      '/GPage' : (context) => GSayfasi(),
      '/FPage' : (context) => FSayfasi(),
      '/CPage/DPage' : (context) => DSayfasi(),
      '/CPage/DPage/FPage' : (BuildContext context) => FSayfasi(),
      '/listeSayfasi' : (context) => ListeSinifi(),
    },

    onGenerateRoute: (RouteSettings settings) {
      List<String> pathElemanlari = settings.name.split("/"); //   /detay/$index  /urun/detay/id
      if(pathElemanlari[1] == 'detay'){
        return MaterialPageRoute(builder: (context)=>ListeDetay(int.parse(pathElemanlari[2])));
      }
    },

    onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(builder: (context) => DSayfasi(),),

    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    //home: NavigasyonIslemleri(),
  ));
}

