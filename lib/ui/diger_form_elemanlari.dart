import 'package:flutter/material.dart';

class DigerFormElemanlari extends StatefulWidget {
  @override
  _DigerFormElemanlariState createState() => _DigerFormElemanlariState();
}

class _DigerFormElemanlariState extends State<DigerFormElemanlari> {
  bool checkBoxState = false;
  String sehir = "";
  bool switchState = false;
  double sliderDeger = 10;
  String secilenRenk = "Kirmizi";
  List<String> sehirler = ["Ankara", "Bursa", "Izmir", "Hatay"];
  String secilenSehir="Ankara";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_circle),
      ),
      appBar: AppBar(
        title: Text("Diğer Form Elemanlari"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            CheckboxListTile(
              value: checkBoxState,
              onChanged: (secildi) {
                setState(() {
                  checkBoxState = secildi;
                });
              },
              activeColor: Colors.red,
              title: Text("Checkbox title"),
              subtitle: Text("Checkbox Subtitle"),
              secondary: Icon(Icons.add),
              selected: true,
            ),
            RadioListTile<String>(
              value: "Ankara",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  debugPrint("Secilen değer : $deger");
                });
              },
              title: Text("Ankara"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.map),
            ),
            RadioListTile<String>(
              value: "Bursa",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  debugPrint("Secilen değer : $deger");
                });
              },
              title: Text("Bursa"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.map),
            ),
            RadioListTile<String>(
              value: "Izmir",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  debugPrint("Secilen değer : $deger");
                });
              },
              title: Text("Izmir"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.map),
            ),
            SwitchListTile(
              value: switchState,
              onChanged: (deger) {
                setState(() {
                  debugPrint("Anlasma onaylandı : $deger");
                  switchState = deger;
                });
              },
              title: Text("Switch title"),
              subtitle: Text("Switch subtitle"),
              secondary: Icon(Icons.refresh),
            ),
            Text("Değeri sliderden seciniz"),

            Slider(
              value: sliderDeger,
              onChanged: (yeniDeger) {
                setState(() {
                  sliderDeger = yeniDeger;
                });
              },
              min: 10,
              max: 20,
              divisions: 20,
              label: sliderDeger.toString(),
            ),


            DropdownButton<String>(items: [
              DropdownMenuItem<String>(child: Row(
                children: <Widget>[
                  Container(width: 24,
                    height: 24,
                    color: Colors.red,
                    margin: EdgeInsets.only(right: 10),),
                  Text("Kırmızı"),
                ],
              ), value: "Kirmizi",),
              DropdownMenuItem<String>(child: Row(
                children: <Widget>[
                  Container(width: 24,
                    height: 24,
                    color: Colors.blue,
                    margin: EdgeInsets.only(right: 10),),
                  Text("Mavi"),
                ],
              ), value: "Mavi",),
              DropdownMenuItem<String>(child: Row(
                children: <Widget>[
                  Container(width: 24,
                    height: 24,
                    color: Colors.green,
                    margin: EdgeInsets.only(right: 10),),
                  Text("Yeşil"),
                ],
              ), value: "Yesil",),

            ], onChanged: (String secilen) {
              setState(() {
                secilenRenk = secilen;
              });
            },
              hint: Text("Seciniz"),
              value: secilenRenk,
            ),

            DropdownButton<String>(items: sehirler.map((oankiSehir) {
              return DropdownMenuItem<String>(
                child: Text(oankiSehir), value: oankiSehir,);
            }).toList(),
              onChanged: (s){
                setState(() {
                  secilenSehir = s;
                });
              },
              value: secilenSehir,
            ),

          ],
        ),
      ),
    );
  }
}
