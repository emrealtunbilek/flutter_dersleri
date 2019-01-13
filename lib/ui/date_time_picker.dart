import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class TarihSaatOrnek extends StatefulWidget {
  @override
  _TarihSaatOrnekState createState() => _TarihSaatOrnekState();
}

class _TarihSaatOrnekState extends State<TarihSaatOrnek> {
  @override
  Widget build(BuildContext context) {

    DateTime suan=DateTime.now();
    DateTime ucAyOncesi=DateTime(2019, suan.month-3);
    DateTime yirmiGunSonrasi=DateTime(2019, 1, suan.day+20);

    TimeOfDay suankiSaat=TimeOfDay.now();


    return Scaffold(
      appBar: AppBar(
        title: Text("Date time picker"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Tarih Sec"),
              color: Colors.green,
              onPressed: () {
                showDatePicker(context: context, initialDate: suan, firstDate: ucAyOncesi, lastDate: yirmiGunSonrasi)
                .then((secilenTarih){
                  debugPrint(secilenTarih.toString());
                  debugPrint(secilenTarih.toIso8601String());
                  debugPrint(secilenTarih.millisecondsSinceEpoch.toString());
                  debugPrint(secilenTarih.toUtc().toIso8601String());
                  debugPrint(secilenTarih.add(Duration(days: 20)).toString());
                  var yeniDate = DateTime.parse(secilenTarih.toUtc().toIso8601String());
                  debugPrint(yeniDate.toIso8601String());

                  print(formatDate(secilenTarih, [yyyy, '-', mm, '-', dd]));
                  print(formatDate(secilenTarih, [dd, '-', mm, '-', yyyy]));


                });
              },
            ),
            RaisedButton(
              child: Text("Saat Sec"),
              color: Colors.blue,
              onPressed: () {
                showTimePicker(context: context, initialTime: suankiSaat).then((secilenSaat){
                  debugPrint(secilenSaat.format(context));
                  debugPrint(secilenSaat.hour.toString() + " : " + secilenSaat.minute.toString());
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
