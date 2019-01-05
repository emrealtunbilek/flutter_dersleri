import 'package:flutter/material.dart';

class EtkinListeOrnek extends StatelessWidget {

  List<Ogrenci> tumOgrenciler=[];

  @override
  Widget build(BuildContext context) {

    ogrenciVerileriniGetir();

    return ListView.separated(
      separatorBuilder: (context, index) {

        if(index % 4 == 0 && index != 0){
          return Container(
            height: 2, color: Colors.blue, margin: EdgeInsets.all(40),
          );
        }else{
          return Container(

          );
        }

      } ,
      itemCount: 20,
      //itemBuilder: (context, index) => Card(),
      itemBuilder: (context, index){
        return Card(
          color: index%2 == 0 ? Colors.red.shade200 : Colors.orange.shade200,
          elevation: 4,
          child: ListTile(
            leading: Icon(Icons.perm_contact_calendar),
            title: Text(tumOgrenciler[index]._isim),
            subtitle: Text(tumOgrenciler[index]._aciklama),
            trailing: Icon(Icons.add),
          ),
        );
      }
    );
  }

  void ogrenciVerileriniGetir(){
    tumOgrenciler=List.generate(300, (index)=>Ogrenci("Ogrenci $index Adı", "Ogrenci $index açıklaması", index%2 ==0 ? true : false));
  }

}

class Ogrenci{
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);
}
